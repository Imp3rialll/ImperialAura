# Imperial Aura Deployment Script

Write-Host "===== Imperial Aura Production Deployment =====" -ForegroundColor Cyan

# Validate environment file
if (-not (Test-Path .env.production)) {
    Write-Host "Error: .env.production file not found!" -ForegroundColor Red
    exit 1
}

Write-Host "Step 1: Installing dependencies..." -ForegroundColor Green
npm install

Write-Host "Step 2: Running database migrations..." -ForegroundColor Green
npx prisma migrate deploy

Write-Host "Step 3: Building the application..." -ForegroundColor Green
$env:NODE_ENV = "production"
npm run build

Write-Host "Step 4: Preparing for deployment..." -ForegroundColor Green
# Copy necessary files for deployment
Copy-Item .env.production .env -Force

Write-Host "===== Build completed successfully! =====" -ForegroundColor Cyan
Write-Host "Your application is ready for deployment." -ForegroundColor Green
Write-Host "1. Upload the .next/, public/, .env, package.json, and next.config.js files to your hosting provider." -ForegroundColor Yellow
Write-Host "2. Make sure to replace the placeholder values in .env with your actual production credentials before deploying." -ForegroundColor Yellow
Write-Host "3. Run 'npm install --production' on your server to install dependencies." -ForegroundColor Yellow
Write-Host "4. Start your application with 'npm start'." -ForegroundColor Yellow
