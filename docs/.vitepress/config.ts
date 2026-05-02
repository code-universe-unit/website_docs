import { defineConfig } from 'vitepress';

export default defineConfig({
  title: 'GreenCom Maps',
  description: 'Premium FiveM MLO Projects & Studio Documentation',
  lang: 'en-US',
  base: '/',
  head: [
    ['link', { rel: 'icon', href: '/favicon.ico' }],
    ['link', { rel: 'preconnect', href: 'https://fonts.googleapis.com' }],
    ['link', { rel: 'preconnect', href: 'https://fonts.gstatic.com', crossorigin: '' }],
    ['link', { href: 'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap', rel: 'stylesheet' }],
    ['meta', { name: 'theme-color', content: '#099268' }],
    ['meta', { property: 'og:type', content: 'website' }],
    ['meta', { property: 'og:title', content: 'GreenCom Maps - Premium FiveM MLO Projects' }],
    ['meta', { property: 'og:description', content: 'Professional FiveM MLO projects with outstanding quality and performance' }],
  ],
  
  // Оптимизация производительности
  cleanUrls: true,
  metaChunk: true,
  
  // Build оптимизации
  vite: {
    build: {
      minify: 'terser',
      chunkSizeWarningLimit: 1000,
      rollupOptions: {
        output: {
          manualChunks: (id) => {
            if (id.includes('node_modules')) {
              return 'vendor'
            }
          }
        }
      }
    },
    optimizeDeps: {
      include: []
    },
    ssr: {
      noExternal: ['mark.js']
    }
  },
  
  appearance: true,
  
  themeConfig: {
    logo: { 
      light: '/images/logo20241k_alpha.png',
      dark: '/images/logo20241k_alpha.png',
      alt: 'GreenCom Maps'
    },
    
    nav: [
      { text: '🏠 Home', link: '/' },
      { text: '📚 Documentation', link: '/mlo/logistic-company-v2' },
      { 
        text: '🔗 Resources',
        items: [
          { text: '🎮 Forum CFX', link: 'https://forum.cfx.re/u/greenbeerg_21' },
          { text: '🛒 Tebex Store', link: 'https://GreenCom-mapping.tebex.io/' },
          { text: '💎 Patreon', link: 'https://www.patreon.com/GreenCom' }
        ]
      }
    ],
    sidebar: {
      '/mlo/': [
        {
          text: '📦 MLO Projects',
          collapsed: false,
          items: [
            { text: '🏢 Logistic Company V2', link: '/mlo/logistic-company-v2' },
            { text: '🏍️ MC Clubhouse Grapeseed', link: '/mlo/mc-clubhouse-grapeseed' },
            { text: '🏙️ Thousand Project', link: '/mlo/thousand-project' }
          ]
        }
      ]
    },
    socialLinks: [
      { icon: 'discord', link: 'https://discord.gg/P3f8XQWpfc' },
      { icon: 'youtube', link: 'https://www.youtube.com/channel/UC0uhGXCogdAQoAUPqldL71g' }
    ],
    footer: {
      message: '🎨 GreenCom Mapping - Premium MLO Projects for FiveM',
      copyright: 'Copyright © 2025 GreenCom Mapping. All rights reserved.'
    },
    search: {
      provider: 'local'
    },
    editLink: {
      pattern: 'https://github.com/GreenBerg21/gcom_wiki/edit/main/docs/:path',
      text: 'Edit this page on GitHub'
    },
    lastUpdated: {
      text: 'Last Updated'
    }
  }
});
