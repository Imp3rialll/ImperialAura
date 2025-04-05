/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'images.unsplash.com',
        pathname: '/**',
      },
    ],
    formats: ['image/avif', 'image/webp'],
  },
  reactStrictMode: true,
  
  // Add redirects for the dashboards
  async redirects() {
    return [
      {
        source: '/dashboard',
        destination: '/user-dashboard',
        permanent: false,
      },
      // Ensure old admin dashboard link redirects to new one
      {
        source: '/dashboard/:path*',
        has: [
          {
            type: 'cookie',
            key: 'admin',
            value: 'true',
          },
        ],
        destination: '/admin-dashboard/:path*',
        permanent: false,
      },
      // Ensure old dashboard paths redirect to user-dashboard
      {
        source: '/dashboard/:path*',
        destination: '/user-dashboard/:path*',
        permanent: false,
      },
    ];
  },
}

module.exports = nextConfig 