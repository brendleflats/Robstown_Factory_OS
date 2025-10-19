
import React from 'react';
import { Building } from '../types';
import { MAP_STATUS_COLORS } from '../constants';

interface PropertyMapProps {
    buildings: Building[];
    selectedBuildingId: string | null;
    onSelectBuilding: (id: string) => void;
}

export const PropertyMap: React.FC<PropertyMapProps> = ({ buildings, selectedBuildingId, onSelectBuilding }) => {
    return (
        <div className="bg-gray-800/50 backdrop-blur-sm p-4 rounded-2xl border border-gray-700/50 flex-grow">
            <h3 className="text-lg font-bold px-2">Property Overview</h3>
            <div className="w-full aspect-square flex items-center justify-center p-4">
                <svg viewBox="0 0 400 400" className="w-full h-full">
                    <defs>
                        <filter id="glow">
                            <feGaussianBlur stdDeviation="3.5" result="coloredBlur" />
                            <feMerge>
                                <feMergeNode in="coloredBlur" />
                                <feMergeNode in="SourceGraphic" />
                            </feMerge>
                        </filter>
                    </defs>
                    {/* Roads */}
                    <path d="M0,380 L400,380" stroke="#4b5563" strokeWidth="15" />
                    <path d="M350,0 L350,400" stroke="#4b5563" strokeWidth="15" />
                    <path d="M342,0 L342,400" stroke="#374151" strokeWidth="3" />
                    <path d="M358,0 L358,400" stroke="#374151" strokeWidth="3" />
                    <path d="M80,0 L80,400" stroke="#4b5563" strokeWidth="8" />

                    {/* Buildings */}
                    {buildings.map(b => {
                        const fillColor = MAP_STATUS_COLORS[b.status] || MAP_STATUS_COLORS['Pending'];
                        const isSelected = selectedBuildingId === b.id;
                        
                        return (
                            <g key={b.id}>
                                <path 
                                    d={b.path}
                                    fill={isSelected ? fillColor : `${fillColor}80`}
                                    stroke={isSelected ? fillColor : '#4b5563'}
                                    strokeWidth={isSelected ? '3' : '2'}
                                    className="cursor-pointer transition-all duration-300"
                                    style={{
                                        filter: isSelected ? 'url(#glow)' : 'none',
                                        opacity: isSelected ? 1 : 0.7
                                    }}
                                    onClick={() => onSelectBuilding(b.id)}
                                />
                            </g>
                        );
                    })}
                    
                    {/* Current Location Marker */}
                    <circle cx="230" cy="230" r="12" fill="#3b82f6" stroke="#ffffff" strokeWidth="3" style={{filter: 'url(#glow)'}} />
                    <circle cx="230" cy="230" r="15" fill="#3b82f6" fillOpacity="0.3" />
                </svg>
            </div>
             <div className="grid grid-cols-3 gap-2 text-xs text-center p-2">
                 <div className="flex items-center justify-center gap-1"><div className="w-2 h-2 rounded-full bg-green-500"></div>Inventoried</div>
                 <div className="flex items-center justify-center gap-1"><div className="w-2 h-2 rounded-full bg-yellow-500"></div>In Progress</div>
                 <div className="flex items-center justify-center gap-1"><div className="w-2 h-2 rounded-full bg-red-500"></div>Pending</div>
             </div>
        </div>
    );
};
