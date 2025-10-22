const { execSync } = require('child_process');
const fs = require('fs');

console.log('\n================================================');
console.log('   FINAL COMMIT - Robstown Factory OS');
console.log('================================================\n');

try {
    // Step 1: Move image if it exists
    console.log('[1/5] Moving dashboard screenshot...');
    if (fs.existsSync('factory-os-preview.png')) {
        fs.copyFileSync('factory-os-preview.png', 'docs/factory-os-preview.png');
        console.log('  ✓ Screenshot moved to docs/');
    } else if (fs.existsSync('docs/factory-os-preview.png')) {
        console.log('  ✓ Screenshot already in place');
    } else {
        console.log('  ⚠ Screenshot not found (will use placeholder)');
    }

    // Step 2: Git add
    console.log('\n[2/5] Adding all files to git...');
    execSync('git add .', { stdio: 'inherit' });
    console.log('  ✓ Done!');

    // Step 3: Commit
    console.log('\n[3/5] Committing changes...');
    const commitMessage = 'Complete Factory OS v1.0: Dashboard, Checklist, Presentation with full navigation and demo materials';
    execSync(`git commit -m "${commitMessage}"`, { stdio: 'inherit' });
    console.log('  ✓ Done!');

    // Step 4: Push
    console.log('\n[4/5] Pushing to GitHub...');
    execSync('git push', { stdio: 'inherit' });
    console.log('  ✓ Done!');

    // Step 5: Status
    console.log('\n[5/5] Verifying...');
    execSync('git status', { stdio: 'inherit' });

    console.log('\n================================================');
    console.log('   SUCCESS! Everything is now on GitHub');
    console.log('================================================\n');
    console.log('Your Factory OS is now live at:\n');
    console.log('🏠 Home Page:');
    console.log('   https://brendleflats.github.io/Robstown_Factory_OS/home.html\n');
    console.log('✅ Checklist (Default):');
    console.log('   https://brendleflats.github.io/Robstown_Factory_OS/\n');
    console.log('📊 Presentation:');
    console.log('   https://brendleflats.github.io/Robstown_Factory_OS/presentation.html\n');
    console.log('📦 Repository:');
    console.log('   https://github.com/brendleflats/Robstown_Factory_OS\n');
    console.log('Wait 2-3 minutes for GitHub Pages to rebuild!\n');
    console.log('================================================');
    console.log('   READY FOR DANE\'S DEMO! 💪');
    console.log('================================================\n');

} catch (error) {
    console.error('\n❌ Error:', error.message);
    console.log('\nTry running final_commit.bat manually instead.');
    process.exit(1);
}
