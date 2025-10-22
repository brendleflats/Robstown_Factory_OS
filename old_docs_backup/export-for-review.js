const fs = require('fs');

console.log('\n📊 Exporting inventory to CSV for review...\n');

// Read inventory template
let inventoryData;
try {
    const rawData = fs.readFileSync('inventory-template-v2.json', 'utf8');
    inventoryData = JSON.parse(rawData);
} catch (error) {
    console.error('❌ Error reading inventory-template-v2.json');
    console.error('Trying inventory-template.json instead...');
    try {
        const rawData = fs.readFileSync('inventory-template.json', 'utf8');
        inventoryData = JSON.parse(rawData);
    } catch (error2) {
        console.error('❌ Could not find inventory file');
        process.exit(1);
    }
}

// Filter out placeholder items
const items = inventoryData.items.filter(item => {
    return !item.name.includes('[YOUR') && !item.name.includes('[Paste');
});

if (items.length === 0) {
    console.error('❌ No items to export!');
    process.exit(1);
}

console.log(`✅ Found ${items.length} items to export\n`);

// Create CSV header
const csvHeader = [
    'ID',
    'Item Name',
    'Building',
    'Location',
    'Condition',
    'Estimated Value',
    'Status',
    'Review Status',
    'Reviewed By',
    'Review Date',
    'Review Notes',
    'APPROVE? (YES/NO)',
    'Description',
    'Specifications',
    'Serial Number',
    'Photo URL',
    'Notes'
].join(',');

// Create CSV rows
const csvRows = items.map(item => {
    return [
        item.id || '',
        `"${item.name || ''}"`,
        item.buildingName || item.buildingId || '',
        `"${item.location || ''}"`,
        item.condition || '',
        item.value || 0,
        item.status || 'Pending Review',
        item.reviewStatus || 'Pending',
        item.reviewedBy || '',
        item.reviewDate || '',
        `"${item.reviewNotes || ''}"`,
        item.reviewStatus === 'Approved' ? 'YES' : '', // Approve column
        `"${(item.description || '').replace(/"/g, '""')}"`,
        `"${(item.specifications || '').replace(/"/g, '""')}"`,
        item.serialNumber || '',
        item.photoUrl || '',
        `"${(item.notes || '').replace(/"/g, '""')}"`,
    ].join(',');
});

// Combine header and rows
const csvContent = [csvHeader, ...csvRows].join('\n');

// Write to file
const filename = `inventory-review-${new Date().toISOString().split('T')[0]}.csv`;
fs.writeFileSync(filename, csvContent);

console.log(`✅ CSV exported: ${filename}\n`);
console.log('📋 Review Instructions:\n');
console.log('1. Open the CSV file in Excel or Google Sheets');
console.log('2. Review each item');
console.log('3. In "APPROVE? (YES/NO)" column, type YES or NO');
console.log('4. Add notes in "Review Notes" column if needed');
console.log('5. Save the file');
console.log('6. Run: node import-reviews.js\n');

console.log('📊 Summary by Review Status:\n');
const pending = items.filter(i => i.reviewStatus === 'Pending' || !i.reviewStatus).length;
const approved = items.filter(i => i.reviewStatus === 'Approved').length;
const needsInfo = items.filter(i => i.reviewStatus === 'Needs Info').length;
const rejected = items.filter(i => i.reviewStatus === 'Rejected').length;

console.log(`   Pending Review: ${pending}`);
console.log(`   Approved: ${approved}`);
console.log(`   Needs Info: ${needsInfo}`);
console.log(`   Rejected: ${rejected}`);
console.log(`   Total Items: ${items.length}\n`);

console.log('🎯 Next Steps:\n');
console.log('1. Share this CSV with Dane and John');
console.log('2. They mark YES/NO in the APPROVE column');
console.log('3. They save the file');
console.log('4. You run: node import-reviews.js');
console.log('5. Dashboard updates automatically!\n');
