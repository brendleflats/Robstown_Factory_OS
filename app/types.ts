
export type BuildingStatus = 'Inventoried' | 'In Progress' | 'Pending';
export type ItemStatus = 'For Sale' | 'Sold' | 'Scrap';

export interface Building {
  id: string;
  name: string;
  status: BuildingStatus;
  path: string;
}

export interface InventoryItem {
  id: string;
  buildingId: string;
  name: string;
  status: ItemStatus;
  value: number;
  condition: 'Excellent' | 'Good' | 'Fair' | 'Poor';
  imageUrl: string;
}
