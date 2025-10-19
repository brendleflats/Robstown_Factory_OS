
export type BuildingStatus = 'Inventoried' | 'In Progress' | 'Pending' | 'Completed';
export type ItemStatus = 'For Sale' | 'Sold' | 'Scrap' | 'Pending Review' | 'Reserved';
export type ReviewStatus = 'Pending' | 'Approved' | 'Needs Info' | 'Rejected';

export interface Building {
  id: string;
  name: string;
  status: BuildingStatus;
  path: string;
}

export interface InventoryItem {
  id: string;
  buildingId: string;
  buildingName?: string;
  name: string;
  description?: string;
  specifications?: string;
  condition: 'Excellent' | 'Good' | 'Fair' | 'Poor';
  conditionRating?: number;
  status: ItemStatus;
  reviewStatus?: ReviewStatus;
  reviewedBy?: string;
  reviewDate?: string;
  reviewNotes?: string;
  value: number;
  location?: string;
  serialNumber?: string;
  photoUrl?: string;
  imageUrl: string;
  aiAnalysis?: string;
  notes?: string;
}
