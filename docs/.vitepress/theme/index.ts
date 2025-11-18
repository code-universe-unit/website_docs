import DefaultTheme from 'vitepress/theme';
import type { Theme } from 'vitepress';
import { Icon } from '@iconify/vue';
import CustomIcon from './components/CustomIcon.vue';
import ImageZoom from './components/ImageZoom.vue';
import HeroSection from './components/HeroSection.vue';
import FeaturesSection from './components/FeaturesSection.vue';
import { h } from 'vue';
import './style.css';

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    // Регистрируем глобальные компоненты
    app.component('Icon', Icon);
    app.component('CustomIcon', CustomIcon);
    app.component('ImageZoom', ImageZoom);
    app.component('HeroSection', HeroSection);
    app.component('FeaturesSection', FeaturesSection);
  },
  Layout() {
    return h(DefaultTheme.Layout, null, {
      'doc-after': () => {
        if (typeof window !== 'undefined') {
          // Динамический импорт medium-zoom только на клиенте
          import('medium-zoom').then(({ default: mediumZoom }) => {
            setTimeout(() => {
              mediumZoom('.vp-doc img:not(.VPImage):not(.no-zoom)', {
                background: 'rgba(0, 0, 0, 0.95)',
                margin: 24,
              });
            }, 100);
          });
        }
      }
    });
  }
} satisfies Theme;
