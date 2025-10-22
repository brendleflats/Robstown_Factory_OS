const fs = require('fs');
const path = require('path');

console.log('Starting Factory_OS Restructuring...\n');

// Create directories
const dirs = [
  'app',
  'app/components',
  'app/utils',
  'docs',
  '.github',
  '.github/workflows'
];

console.log('Creating directory structure...');
dirs.forEach(dir => {
  if (!fs.existsSync(dir)) {
    fs.mkdirSync(dir, { recursive: true });
    console.log(`  Created: ${dir}`);
  }
});

// Move app files
const appFiles = [
  'App.tsx',
  'constants.ts',
  'index.html',
  'index.tsx',
  'metadata.json',
  'package.json',
  'tsconfig.json',
  'types.ts',
  'vite.config.ts'
];

console.log('\nMoving application files to app/...');
appFiles.forEach(file => {
  if (fs.existsSync(file)) {
    fs.renameSync(file, path.join('app', file));
    console.log(`  Moved: ${file}`);
  }
});

// Move components
console.log('\nMoving components...');
if (fs.existsSync('components')) {
  const components = fs.readdirSync('components').filter(f => f.endsWith('.tsx'));
  components.forEach(file => {
    fs.renameSync(path.join('components', file), path.join('app/components', file));
    console.log(`  Moved: components/${file}`);
  });
  fs.rmdirSync('components');
}

// Move utils
console.log('\nMoving utils...');
if (fs.existsSync('utils')) {
  const utils = fs.readdirSync('utils').filter(f => f.endsWith('.ts'));
  utils.forEach(file => {
    fs.renameSync(path.join('utils', file), path.join('app/utils', file));
    console.log(`  Moved: utils/${file}`);
  });
  fs.rmdirSync('utils');
}

// Copy roy.html to docs/index.html
console.log('\nSetting up docs folder...');
if (fs.existsSync('roy.html')) {
  fs.copyFileSync('roy.html', 'docs/index.html');
  console.log('  Created: docs/index.html (from roy.html)');
}

console.log('\nRestructuring complete!');
console.log('\nNext steps:');
console.log('1. CD into app directory: cd app');
console.log('2. Install dependencies: npm install');
console.log('3. Run dev server: npm run dev');
console.log('4. Open docs/index.html to test the checklist');
