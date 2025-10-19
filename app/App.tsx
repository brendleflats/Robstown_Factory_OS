
import React, { useState, useMemo } from 'react';
import { InventoryItem } from './types';
import { BUILDINGS_DATA, INVENTORY_DATA } from './constants';
import { KpiCard } from './components/KpiCard';
import { InventoryModal } from './components/InventoryModal';
import { PropertyMap } from './components/PropertyMap';
import { InventoryPanel } from './components/InventoryPanel';
import { formatCurrency } from './utils/formatCurrency';
import { MapPin, DollarSign, CheckCircle, Package } from './components/Icons';

export default function App() {
    const [selectedBuildingId, setSelectedBuildingId] = useState<string | null>(null);
    const [selectedItem, setSelectedItem] = useState<InventoryItem | null>(null);
    const [searchTerm, setSearchTerm] = useState('');

    const dashboardMetrics = useMemo(() => {
        const totalValue = INVENTORY_DATA
            .filter(item => item.status === 'For Sale')
            .reduce((sum, item) => sum + item.value, 0);
        
        const soldCount = INVENTORY_DATA.filter(item => item.status === 'Sold').length;
        const totalCount = INVENTORY_DATA.length;
        const liquidationProgress = totalCount > 0 ? (soldCount / totalCount) * 100 : 0;

        return {
            totalValue,
            liquidationProgress: liquidationProgress.toFixed(0),
            itemsInventoried: totalCount,
        };
    }, []);

    const filteredInventory = useMemo(() => {
        return INVENTORY_DATA
            .filter(item => !selectedBuildingId || item.buildingId === selectedBuildingId)
            .filter(item => item.name.toLowerCase().includes(searchTerm.toLowerCase()));
    }, [selectedBuildingId, searchTerm]);

    const selectedBuilding = BUILDINGS_DATA.find(b => b.id === selectedBuildingId);
    
    return (
        <>
            <InventoryModal item={selectedItem} onClose={() => setSelectedItem(null)} />

            <div className="min-h-screen w-full p-4 lg:p-6 grid grid-cols-1 xl:grid-cols-3 gap-6 bg-gray-900/50"
                style={{background: 'radial-gradient(circle at top, #1f2937, #030712)'}}>
                
                {/* Left Column: Map and Stats */}
                <div className="xl:col-span-1 flex flex-col gap-6">
                    <div className="bg-gray-800/50 backdrop-blur-sm p-6 rounded-2xl border border-gray-700/50">
                        <h1 className="text-2xl font-bold text-white">Property Dashboard</h1>
                        <p className="text-sm text-gray-400 flex items-center gap-2 mt-1">
                            <MapPin size={14}/> Robstown, TX Industrial Complex
                        </p>
                    </div>

                    <div className="grid grid-cols-1 md:grid-cols-3 xl:grid-cols-1 gap-4">
                       <KpiCard title="Total Asset Value (For Sale)" value={formatCurrency(dashboardMetrics.totalValue)} icon={<DollarSign size={20} className="text-green-400" />} />
                       <KpiCard title="Liquidation Progress" value={`${dashboardMetrics.liquidationProgress}%`} subtext={`${INVENTORY_DATA.filter(i => i.status === 'Sold').length} items sold`} icon={<CheckCircle size={20} className="text-blue-400" />} />
                       <KpiCard title="Items Inventoried" value={dashboardMetrics.itemsInventoried} icon={<Package size={20} className="text-yellow-400" />} />
                    </div>
                    
                    <PropertyMap 
                        buildings={BUILDINGS_DATA}
                        selectedBuildingId={selectedBuildingId}
                        onSelectBuilding={(id) => setSelectedBuildingId(id === selectedBuildingId ? null : id)}
                    />
                </div>

                {/* Right Column: Inventory List */}
                <InventoryPanel
                    buildings={BUILDINGS_DATA}
                    filteredInventory={filteredInventory}
                    selectedBuilding={selectedBuilding}
                    searchTerm={searchTerm}
                    onSearchTermChange={setSearchTerm}
                    onClearSelection={() => setSelectedBuildingId(null)}
                    onSelectItem={setSelectedItem}
                />
            </div>
        </>
    );
}
