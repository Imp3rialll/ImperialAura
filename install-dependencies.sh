#!/bin/bash

# Install Prisma and database dependencies
npm install @prisma/client
npm install -D prisma

# Install Clerk for authentication
npm install @clerk/nextjs

# Install Zod for validation
npm install zod
npm install react-hook-form @hookform/resolvers

# Install Recharts for admin dashboard charts
npm install recharts

# Install Resend for email
npm install resend

# Install Uploadthing for file uploads
npm install uploadthing @uploadthing/react

# Install Razorpay SDK
npm install razorpay

# Generate Prisma client
echo "Don't forget to run 'npx prisma generate' after setting up your database!" 