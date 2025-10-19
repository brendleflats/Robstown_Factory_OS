
import React from 'react';
import { InventoryItem } from '../types';
import { formatCurrency } from '../utils/formatCurrency';
import { STATUS_COLORS } from '../constants';
import { X } from './Icons';

interface InventoryModalProps {
    item: InventoryItem | null;
    onClose: () => void;
}

export const InventoryModal: React.FC<InventoryModalProps> = ({ item, onClose }) => {
    if (!item) return null;

    return (
        <div 
            className="fixed inset-0 bg-black/70 backdrop-blur-sm flex items-center justify-center z-50 transition-opacity duration-300"
            onClick={onClose}
        >
            <div 
                className="bg-gray-900 rounded-2xl border border-gray-700/50 w-full max-w-2xl m-4 overflow-hidden transform transition-all duration-300 scale-95 animate-modal-in"
                onClick={e => e.stopPropagation()}
            >
                <div className="relative">
                    <img src={item.imageUrl} alt={item.name} className="w-full h-64 object-cover" />
                    <button onClick={onClose} className="absolute top-4 right-4 bg-black/50 rounded-full p-2 hover:bg-black/80 transition-colors">
                        <X size={20} className="text-white" />
                    </button>
                    <div className="absolute bottom-0 left-0 p-4 bg-gradient-to-t from-black/80 to-transparent w-full">
                         <h2 className="text-2xl font-bold text-white">{item.name}</h2>
                    </div>
                </div>
                <div className="p-6 grid grid-cols-1 md:grid-cols-3 gap-4">
                    <div className="bg-gray-800/50 p-3 rounded-lg text-center">
                        <p className="text-sm text-gray-400">Value</p>
                        <p className="text-lg font-semibold text-white">{formatCurrency(item.value)}</p>
                    </div>
                    <div className="bg-gray-800/50 p-3 rounded-lg text-center">
                        <p className="text-sm text-gray-400">Condition</p>
                        <p className="text-lg font-semibold text-white">{item.condition}</p>
                    </div>
                    <div className="bg-gray-800/50 p-3 rounded-lg text-center">
                        <p className="text-sm text-gray-400">Status</p>
                        <p className={`text-lg font-semibold ${STATUS_COLORS[item.status]?.replace('bg-', '').replace('/10', '')}`}>{item.status}</p>
                    </div>
                </div>
            </div>
        </div>
    );
};
