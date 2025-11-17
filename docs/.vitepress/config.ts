import { defineConfig } from 'vitepress';

export default defineConfig({
  title: 'GreenCom Maps',
  description: 'Premium MLO Projects & Documentation',
  lang: 'en-US',
  base: '/',
  head: [
    ['link', { rel: 'icon', href: '/favicon.ico' }],
    ['link', { rel: 'preconnect', href: 'https://fonts.googleapis.com' }],
    ['link', { rel: 'preconnect', href: 'https://fonts.gstatic.com', crossorigin: '' }],
    ['link', { href: 'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap', rel: 'stylesheet' }],
    ['meta', { name: 'theme-color', content: '#099268' }],
  ],
  
  // Оптимизация производительности
  cleanUrls: true,
  metaChunk: true,
  
  // Build оптимизации
  vite: {
    build: {
      minify: 'terser',
      terserOptions: {
        compress: {
          drop_console: true,
          drop_debugger: true
        }
      },
      chunkSizeWarningLimit: 1000,
      rollupOptions: {
        output: {
          manualChunks: (id) => {
            if (id.includes('node_modules')) {
              if (id.includes('@iconify')) {
                return 'iconify'
              }
              return 'vendor'
            }
          }
        }
      }
    },
    optimizeDeps: {
      include: ['@iconify/vue']
    },
    ssr: {
      noExternal: ['@iconify/vue', 'mark.js']
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
      { text: 'Home', link: '/' },
      { text: 'Documentation', link: '/mlo/logistic-company-v2' },
      { 
        text: 'Resources',
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
          text: 'MLO Projects',
          items: [
            { text: 'Logistic Company V2', link: '/mlo/logistic-company-v2' },
            { text: 'MC Clubhouse Grapeseed', link: '/mlo/mc-clubhouse-grapeseed' }
          ]
        }
      ]
    },
    socialLinks: [
      { icon: 'discord', link: 'https://discord.gg/P3f8XQWpfc' },
      { icon: 'youtube', link: 'https://www.youtube.com/channel/UC0uhGXCogdAQoAUPqldL71g' }
    ],
    footer: {
      message: 'GreenCom Mapping - MLO Projects',
      copyright: 'Copyright © 2025 GreenCom Mapping'
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
