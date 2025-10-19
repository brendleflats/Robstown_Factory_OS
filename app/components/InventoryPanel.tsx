
import React from 'react';
import { Building, InventoryItem } from '../types';
import { STATUS_COLORS } from '../constants';
import { formatCurrency } from '../utils/formatCurrency';
import { Search, ChevronRight, Building as BuildingIcon, Package } from './Icons';

interface InventoryPanelProps {
    buildings: Building[];
    filteredInventory: InventoryItem[];
    selectedBuilding: Building | undefined;
    searchTerm: string;
    onSearchTermChange: (term: string) => void;
    onClearSelection: () => void;
    onSelectItem: (item: InventoryItem) => void;
}

export const InventoryPanel: React.FC<InventoryPanelProps> = ({
    buildings,
    filteredInventory,
    selectedBuilding,
    searchTerm,
    onSearchTermChange,
    onClearSelection,
    onSelectItem
}) => {
    return (
        <div className="xl:col-span-2 bg-gray-800/50 backdrop-blur-sm rounded-2xl border border-gray-700/50 flex flex-col">
            <div className="p-4 border-b border-gray-700/50">
                <div className="flex justify-between items-center mb-4">
                    <div>
                        <h2 className="text-xl font-bold text-white flex items-center gap-2">
                            <BuildingIcon size={20}/>
                            {selectedBuilding ? selectedBuilding.name : 'All Buildings'}
                        </h2>
                        <p className={`text-sm font-semibold border rounded-full px-2 py-0.5 inline-block mt-1 ${STATUS_COLORS[selectedBuilding?.status || 'Pending'] || 'text-gray-400 border-gray-400/50'}`}>
                             {selectedBuilding ? selectedBuilding.status : `${buildings.length} locations`}
                        </p>
                    </div>
                   {selectedBuilding && (
                        <button 
                            onClick={onClearSelection}
                            className="text-sm text-blue-400 hover:text-blue-300 flex items-center gap-1"
                        >
                            View All Buildings <ChevronRight size={16}/>
                        </button>
                   )}
                </div>
                <div className="relative">
                    <Search size={18} className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
                    <input 
                        type="text"
                        placeholder="Search inventory by name..."
                        value={searchTerm}
                        onChange={(e) => onSearchTermChange(e.target.value)}
                        className="w-full bg-gray-900/50 border border-gray-700 rounded-lg pl-10 pr-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                    />
                </div>
            </div>
            
            <div className="flex-grow overflow-y-auto p-4">
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 2xl:grid-cols-4 gap-4">
                    {filteredInventory.map(item => (
                        <div 
                            key={item.id} 
                            className="bg-gray-800 rounded-lg overflow-hidden border border-gray-700/80 group cursor-pointer transform hover:-translate-y-1 transition-transform duration-300"
                            onClick={() => onSelectItem(item)}
                        >
                            <div className="h-40 overflow-hidden relative">
                                 <img src={item.imageUrl} alt={item.name} className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" />
                                 <div className={`absolute top-2 right-2 text-xs font-bold px-2 py-1 rounded-full ${STATUS_COLORS[item.status]}`}>
                                    {item.status}
                                 </div>
                            </div>
                            <div className="p-3">
                                <p className="font-semibold text-white truncate">{item.name}</p>
                                <p className="text-lg font-bold text-green-400">{formatCurrency(item.value)}</p>
                            </div>
                        </div>
                    ))}
                    {filteredInventory.length === 0 && (
                        <div className="text-center py-20 text-gray-500 col-span-full">
                            <Package size={48} className="mx-auto mb-4" />
                            <h3 className="text-lg font-semibold">No Inventory Found</h3>
                            <p className="text-sm">Try adjusting your search or selecting a different building.</p>
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
};
