import DefaultTheme from 'vitepress/theme';
import type { Theme } from 'vitepress';
import { Icon } from '@iconify/vue';
import CustomIcon from './components/CustomIcon.vue';
import ImageZoom from './components/ImageZoom.vue';
import HeroSection from './components/HeroSection.vue';
import FeaturesSection from './components/FeaturesSection.vue';
import { nextTick, onMounted, watch } from 'vue';
import { useRoute } from 'vitepress';
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
  setup() {
    const route = useRoute();
    
    const initZoom = () => {
      // Проверка на клиентскую сторону
      if (typeof window === 'undefined') return;
      
      nextTick(() => {
        import('medium-zoom').then(({ default: mediumZoom }) => {
          // Удаляем предыдущие экземпляры
          const images = document.querySelectorAll('.vp-doc img:not(.VPImage):not(.no-zoom)');
          if (images.length > 0) {
            mediumZoom(images, {
              background: 'rgba(0, 0, 0, 0.95)',
              margin: 24,
            });
          }
        }).catch(err => {
          console.error('Failed to load medium-zoom:', err);
        });
      });
    };
    
    onMounted(() => {
      // Инициализация с задержкой для гарантии загрузки DOM
      setTimeout(initZoom, 300);
    });
    
    watch(() => route.path, () => {
      setTimeout(initZoom, 300);
    });
  }
} satisfies Theme;
