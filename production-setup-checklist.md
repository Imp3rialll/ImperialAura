# Imperial Aura Production Setup Checklist

## Database Configuration (Neon DB)
- [ ] Log in to your Neon DB account
- [ ] Create a new production database or use your existing one
- [ ] Get the production connection string
- [ ] Update `.env.production` with the proper connection string
- [ ] Run migrations on the production database: `npx prisma migrate deploy`
- [ ] Seed initial data if needed: `npx prisma db seed`

## Clerk Authentication Setup
- [ ] Log in to your Clerk dashboard: https://dashboard.clerk.dev/
- [ ] Create a new application or select your existing one
- [ ] Switch to production mode in Clerk dashboard
- [ ] Get your production API keys:
  - [ ] Publishable key (`pk_live_...`)
  - [ ] Secret key (`sk_live_...`)
- [ ] Update `.env.production` with your production Clerk keys
- [ ] Configure authentication webhooks for production
- [ ] Set up OAuth providers if needed (Google, GitHub, etc.)
- [ ] Verify all sign-in/sign-up redirects are correctly configured

## Uploadthing Configuration
- [ ] Log in to your Uploadthing dashboard: https://uploadthing.com/dashboard
- [ ] Create a new project or select your existing one
- [ ] Get your production API keys:
  - [ ] Secret key (`sk_live_...`)
  - [ ] App ID
- [ ] Update `.env.production` with your production Uploadthing credentials
- [ ] Configure file upload limits and permissions
- [ ] Set CORS configuration for your production domain

## Razorpay Payment Integration
- [ ] Log in to your Razorpay dashboard: https://dashboard.razorpay.com/
- [ ] Switch to Live mode
- [ ] Get your production API keys:
  - [ ] Key ID (`rzp_live_...`)
  - [ ] Key Secret
- [ ] Update `.env.production` with your production Razorpay credentials
- [ ] Configure webhooks for payment events
- [ ] Set up the return URL for successful payments

## Resend Email Service
- [ ] Log in to your Resend dashboard: https://resend.com/
- [ ] Create a new API key or use your existing one
- [ ] Get your production API key (`re_...`)
- [ ] Update `.env.production` with your production Resend API key
- [ ] Verify your domain in Resend
- [ ] Test sending emails through the API

## Next.js Configuration
- [ ] Update all `NEXT_PUBLIC_` URLs in `.env.production` to your production domain
- [ ] Configure your production domain in `next.config.js` (if needed)
- [ ] Set up proper redirects and rewrites (if needed)
- [ ] Configure proper image domains in Next.js Image component

## Deployment Platform Setup
- [ ] Choose your hosting platform (Vercel, Netlify, etc.)
- [ ] Connect your Git repository to the hosting platform
- [ ] Set up environment variables in the hosting platform
- [ ] Configure build settings:
  - [ ] Build command: `npm run build`
  - [ ] Output directory: `.next`
- [ ] Set up your custom domain
- [ ] Configure SSL certificate

## Final Checklist Before Going Live
- [ ] Replace all placeholder values in `.env.production` with actual credentials
- [ ] Run database migrations on the production database
- [ ] Build the application with production environment
- [ ] Test all authentication flows
- [ ] Test payment processing
- [ ] Verify email sending functionality
- [ ] Test file uploads

## Important Notes
- Never commit sensitive information like API keys to your repository
- Always use environment variables for secrets
- Test thoroughly before deploying to production
- Set up monitoring and error tracking
