
import React from 'react';

interface KpiCardProps {
    title: string;
    value: string | number;
    icon: React.ReactNode;
    subtext?: string;
}

export const KpiCard: React.FC<KpiCardProps> = ({ title, value, icon, subtext }) => (
    <div className="bg-gray-800/50 backdrop-blur-sm p-4 rounded-xl border border-gray-700/50 flex flex-col justify-between">
        <div className="flex justify-between items-center">
            <p className="text-sm text-gray-400">{title}</p>
            {icon}
        </div>
        <div>
            <p className="text-3xl font-bold text-white mt-2">{value}</p>
            {subtext && <p className="text-xs text-gray-500">{subtext}</p>}
        </div>
    </div>
);
