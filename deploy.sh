#!/bin/bash
echo "Starting deployment..."

# Install dependencies if not done already
npm install

# Build the app if required
npm run build

# Start or restart with PM2
pm2 start app.js --name my-app || pm2 restart my-app

echo "Deployment completed successfully!"
