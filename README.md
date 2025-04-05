# Imperial Aura E-Commerce

A luxury e-commerce platform built with Next.js, Clerk, and Prisma.

## Technologies Used

- Next.js 15 (App Router)
- TypeScript
- Tailwind CSS
- Prisma with PostgreSQL
- Clerk Authentication
- Framer Motion for animations

## Features

- User authentication and profile management
- Product catalog with categories
- Shopping cart functionality
- Order management
- Admin dashboard
- Responsive design

## Getting Started

### Prerequisites

- Node.js 18+
- PostgreSQL database (or Neon, Railway, etc.)
- Clerk account for authentication

### Setup Instructions

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd imperial-aura
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Create a `.env` file in the root directory with the following variables:
   ```
   # Database
   DATABASE_URL="your-postgresql-connection-string"
   
   # Clerk Authentication
   NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=your-clerk-publishable-key
   CLERK_SECRET_KEY=your-clerk-secret-key
   
   # App settings
   NEXT_PUBLIC_APP_URL=http://localhost:3000
   ```

4. Set up the database:
   ```bash
   # Run migrations
   npm run db:migrate
   
   # Seed the database
   npm run seed
   ```

5. Start the development server:
   ```bash
   npm run dev
   ```

6. Open [http://localhost:3000](http://localhost:3000) in your browser.

## Database Schema

The application uses the following main data models:

- User (via Clerk and local database)
- Product
- Category
- Cart
- Order
- Review

## Environment Setup

### Database Setup

The project uses Prisma with PostgreSQL. You can use a local PostgreSQL instance or a cloud service like Neon or Railway.

To configure your database:

1. Update the `DATABASE_URL` in your `.env` file
2. Run migrations: `npm run db:migrate`
3. Seed the database: `npm run seed`

### Clerk Authentication

To set up Clerk authentication:

1. Create an account at [clerk.dev](https://clerk.dev)
2. Create a new application in the Clerk dashboard
3. Copy your API keys to your `.env` file
4. Configure the sign-in and sign-up URLs in the Clerk dashboard

## Commands

- `npm run dev` - Start the development server
- `npm run dev:port 3333` - Start the development server on a specific port
- `npm run build` - Build the application for production
- `npm run start` - Start the production server
- `npm run lint` - Run ESLint
- `npm run seed` - Seed the database with initial data
- `npm run db:push` - Push schema changes to the database
- `npm run db:migrate` - Run migrations
- `npm run db:reset` - Reset the database and run migrations

## Project Structure

- `/app` - Next.js app router pages and layouts
- `/components` - React components
- `/context` - React context providers
- `/hooks` - Custom React hooks
- `/lib` - Utility functions and shared code
- `/prisma` - Prisma schema and migrations
- `/public` - Static assets
- `/store` - State management

## Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some feature'`)
5. Push to the branch (`git push origin feature/your-feature`)
6. Open a pull request

## License

This project is licensed under the MIT License.

# Razorpay Integration

This project includes integration with Razorpay for payment processing. To set up Razorpay:

1. Create a Razorpay account at [https://razorpay.com](https://razorpay.com)
2. Obtain your API Key ID and Secret from the Razorpay Dashboard
3. Add these to your `.env.local` file:
   ```
   RAZORPAY_KEY_ID=your_key_id
   RAZORPAY_KEY_SECRET=your_key_secret
   ```
4. The integration includes:
   - A reusable `RazorpayCheckout` component
   - API routes for creating orders and verifying payments
   - Utility functions for working with Razorpay

## Testing Razorpay Payments

For testing, use the following test card details:
- Card Number: 4111 1111 1111 1111
- Expiry: Any future date
- CVV: Any 3-digit number
- OTP: 1234 