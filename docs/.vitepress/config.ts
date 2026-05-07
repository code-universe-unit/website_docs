import { defineConfig } from 'vitepress';

export default defineConfig({
  title: 'GreenCome Mapping Wiki',
  description: 'Documentation for GreenCome Mapping MLO Projects',
  lang: 'en-US',
  base: '/',
  head: [
    ['link', { rel: 'icon', href: '/favicon.ico' }],
    ['link', { rel: 'preconnect', href: 'https://github.com' }],
    ['link', { rel: 'dns-prefetch', href: 'https://github.com' }]
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
  
  appearance: 'dark',
  
  themeConfig: {
    logo: '/logo.svg',
    
    nav: [
      { text: 'Documentation', link: '/' },
      { text: 'MLO Projects', link: '/mlo/logistic-company-v2' },
      { 
        text: 'Links',
        items: [
          { text: 'Forum CFX', link: 'https://forum.cfx.re/u/greenbeerg_21' },
          { text: 'Tebex Store', link: 'https://greencome-mapping.tebex.io/' },
          { text: 'Patreon', link: 'https://www.patreon.com/greencome' }
        ]
      }
    ],
    sidebar: {
      '/mlo/': [
        {
          text: 'MLO Projects',
          items: [
            { text: 'Logistic Company V2', link: '/mlo/logistic-company-v2' },
            { text: 'MC Clubhouse Grapeseed', link: '/mlo/mc-clubhouse-grapeseed' },
            { text: 'Thousand', link: '/mlo/thousand' }
          ]
        }
      ]
    },
    socialLinks: [
      { icon: 'discord', link: 'https://discord.gg/P3f8XQWpfc' },
      { icon: 'youtube', link: 'https://www.youtube.com/channel/UC0uhGXCogdAQoAUPqldL71g' }
    ],
    footer: {
      message: 'GreenCome Mapping - MLO Projects',
      copyright: 'Copyright © 2025 GreenCome Mapping'
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
