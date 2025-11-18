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
    
    const initImageViewer = () => {
      // Проверка на клиентскую сторону
      if (typeof window === 'undefined') {
        console.log('[Viewer] Running on server, skipping initialization');
        return;
      }
      
      console.log('[Viewer] Initializing image viewer...');
      
      nextTick(() => {
        import('viewerjs').then(({ default: Viewer }) => {
          const images = document.querySelectorAll('.vp-doc img:not(.VPImage):not(.no-zoom)');
          console.log(`[Viewer] Found ${images.length} images to initialize`);
          
          if (images.length > 0) {
            images.forEach((img, index) => {
              // Добавляем cursor pointer
              (img as HTMLElement).style.cursor = 'zoom-in';
              
              // Создаем viewer для каждой картинки
              new Viewer(img as HTMLImageElement, {
                inline: false,
                button: true,
                navbar: false,
                title: false,
                toolbar: {
                  zoomIn: 1,
                  zoomOut: 1,
                  oneToOne: 1,
                  reset: 1,
                  rotateLeft: 1,
                  rotateRight: 1,
                  flipHorizontal: 1,
                  flipVertical: 1,
                },
                tooltip: true,
                movable: true,
                zoomable: true,
                rotatable: true,
                scalable: true,
                transition: true,
                fullscreen: true,
                keyboard: true,
                backdrop: true,
              });
              console.log(`[Viewer] Initialized viewer for image ${index + 1}`);
            });
          } else {
            console.warn('[Viewer] No images found to initialize');
          }
        }).catch(err => {
          console.error('[Viewer] Failed to load viewerjs:', err);
        });
      });
    };
    
    onMounted(() => {
      // Инициализация с задержкой для гарантии загрузки DOM
      setTimeout(initImageViewer, 300);
    });
    
    watch(() => route.path, () => {
      setTimeout(initImageViewer, 300);
    });
  }
} satisfies Theme;
