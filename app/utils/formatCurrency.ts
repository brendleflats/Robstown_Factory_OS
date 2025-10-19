
export const formatCurrency = (value: number): string => 
    new Intl.NumberFormat('en-US', { 
        style: 'currency', 
        currency: 'USD', 
        minimumFractionDigits: 0 
    }).format(value);
