# Robstown Factory OS - Restructured Project

This project contains two main components:
1. **Factory Dashboard App** (`/app`) - React/Vite property liquidation dashboard
2. **Project Checklist** (`/docs`) - Interactive HTML checklist for GitHub Pages

## Project Structure

```
Robstown_Factory_OS/
├── .github/
│   └── workflows/
│       └── deploy-checklist.yml    # Deploys ONLY the checklist to GitHub Pages
├── app/                             # Your React/Vite application
│   ├── components/                  # React components
│   ├── utils/                       # Utility functions
│   ├── App.tsx                      # Main app component
│   ├── index.tsx                    # App entry point
│   ├── package.json                 # App dependencies
│   ├── vite.config.ts               # Vite configuration
│   ├── Dockerfile                   # Docker configuration for deployment
│   └── ... (other app files)
├── docs/                            # Static checklist for GitHub Pages
│   └── index.html                   # Interactive project checklist
└── README.md                        # This file
```

## Quick Start

### Running the Dashboard App Locally

```bash
# Navigate to the app directory
cd app

# Install dependencies (first time only)
npm install

# Start the development server
npm run dev
```

The app will be available at `http://localhost:5173`

### Using the Project Checklist

Simply open `docs/index.html` in your browser. It uses localStorage to persist your progress, notes, and custom tasks.

### Building the App for Production

```bash
cd app
npm run build
```

The production build will be in `app/dist/`

## Docker Deployment

```bash
# Navigate to the app directory
cd app

# Build the Docker image
docker build -t robstown-os .

# Run the container
docker run -p 8080:80 robstown-os
```

Access the app at `http://localhost:8080`

## GitHub Pages Deployment

The project checklist at `/docs/index.html` is automatically deployed to GitHub Pages when you push to the main branch.

After pushing to GitHub, your checklist will be available at:
`https://brendleflats.github.io/Robstown_Factory_OS/`

## Features

### Dashboard App (`/app`)
- Real-time property visualization
- Building-based inventory filtering
- KPI tracking (Total Asset Value, Liquidation Progress, Items Inventoried)
- Interactive property map with color-coded buildings
- Responsive design for mobile and desktop

### Project Checklist (`/docs`)
- 5-phase factory liquidation workflow
- Progress tracking with visual progress bar
- Custom task addition
- Project notes scratchpad
- AI prompt generators for documentation
- Auto-save using localStorage
- Collapsible phase sections

## Development Workflow

1. **Work on the Dashboard**: `cd app && npm run dev`
2. **Edit Components**: Modify files in `app/components/`
3. **Update Checklist**: Edit `docs/index.html` directly
4. **Test Everything**: Run the app locally and open the checklist
5. **Build for Production**: `cd app && npm run build`
6. **Deploy**: Push to GitHub or use Docker

## Next Steps: Adding Real-Time Collaboration

To make this a true "Factory OS" with shared state (not just localStorage):

1. **Set up Supabase** (free tier available)
2. **Install Supabase client**: `cd app && npm install @supabase/supabase-js`
3. **Replace localStorage with Supabase calls**:
   - Tasks: `supabase.from('tasks').select('*')`
   - Updates: `supabase.from('tasks').update({is_checked: true})`
4. **Add authentication**: Use Supabase Auth for multi-user support

This will allow Dane and John to see your progress in real-time.

## Repository

GitHub: https://github.com/brendleflats/Robstown_Factory_OS

## Support

For issues or questions, create an issue on GitHub.
