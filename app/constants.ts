
import { Building, InventoryItem, BuildingStatus, ItemStatus } from './types';

export const STATUS_COLORS: Record<BuildingStatus | ItemStatus, string> = {
  // Building Status
  'Inventoried': 'text-green-400 border-green-400/50',
  'In Progress': 'text-yellow-400 border-yellow-400/50',
  'Pending': 'text-red-400 border-red-400/50',
  // Item Status
  'For Sale': 'bg-blue-500/10 text-blue-400',
  'Sold': 'bg-green-500/10 text-green-400',
  'Scrap': 'bg-gray-500/10 text-gray-400',
};

export const MAP_STATUS_COLORS: Record<BuildingStatus, string> = {
  'Inventoried': 'fill-green-500/20 stroke-green-400',
  'In Progress': 'fill-yellow-500/20 stroke-yellow-400',
  'Pending': 'fill-red-500/20 stroke-red-400',
};

export const BUILDINGS_DATA: Building[] = [
  {
    id: 'main_complex',
    name: 'Main Complex',
    status: 'In Progress',
    path: "M100,150 L100,350 L250,350 L250,250 L200,250 L200,150 Z"
  },
  {
    id: 'building_110',
    name: 'Building 110',
    status: 'Inventoried',
    path: "M150,50 L150,130 L200,130 L200,50 Z"
  },
  {
    id: 'building_107',
    name: 'Building 107',
    status: 'Pending',
    path: "M280,80 L320,70 L330,120 L290,130 Z"
  },
];

export const INVENTORY_DATA: InventoryItem[] = [
    { id: 'inv001', buildingId: 'main_complex', name: 'Heavy Duty Forklift', status: 'For Sale', value: 18500, condition: 'Excellent', imageUrl: 'https://picsum.photos/seed/Forklift/600/400' },
    { id: 'inv002', buildingId: 'main_complex', name: 'Industrial Shelving Units (x20)', status: 'For Sale', value: 4500, condition: 'Good', imageUrl: 'https://picsum.photos/seed/Shelving/600/400' },
    { id: 'inv003', buildingId: 'building_110', name: 'Office Desks (x15)', status: 'Sold', value: 3000, condition: 'Good', imageUrl: 'https://picsum.photos/seed/Desks/600/400' },
    { id: 'inv004', buildingId: 'building_110', name: 'Ergonomic Chairs (x30)', status: 'Sold', value: 3750, condition: 'Excellent', imageUrl: 'https://picsum.photos/seed/Chairs/600/400' },
    { id: 'inv005', buildingId: 'main_complex', name: 'CNC Milling Machine', status: 'For Sale', value: 55000, condition: 'Good', imageUrl: 'https://picsum.photos/seed/CNC/600/400' },
    { id: 'inv006', buildingId: 'building_107', name: 'Scrap Metal Pile', status: 'Scrap', value: 1200, condition: 'Poor', imageUrl: 'https://picsum.photos/seed/Scrap/600/400' },
    { id: 'inv007', buildingId: 'main_complex', name: 'Air Compressor', status: 'For Sale', value: 2200, condition: 'Good', imageUrl: 'https://picsum.photos/seed/Compressor/600/400' },
    { id: 'inv008', buildingId: 'building_110', name: 'Conference Table', status: 'For Sale', value: 650, condition: 'Excellent', imageUrl: 'https://picsum.photos/seed/Table/600/400' },
    { id: 'inv009', buildingId: 'building_110', name: 'File Cabinets (x10)', status: 'Sold', value: 500, condition: 'Fair', imageUrl: 'https://picsum.photos/seed/Cabinets/600/400' },
    { id: 'inv010', buildingId: 'main_complex', name: 'Welding Machine', status: 'For Sale', value: 1800, condition: 'Good', imageUrl: 'https://picsum.photos/seed/Welder/600/400' },
    { id: 'inv011', buildingId: 'building_107', name: 'Damaged Pallet Racking', status: 'Scrap', value: 300, condition: 'Poor', imageUrl: 'https://picsum.photos/seed/Racking/600/400' },
    { id: 'inv012', buildingId: 'main_complex', name: 'Security Camera System', status: 'For Sale', value: 1500, condition: 'Excellent', imageUrl: 'https://picsum.photos/seed/Cameras/600/400' },
];
