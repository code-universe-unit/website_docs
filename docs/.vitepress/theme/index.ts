import DefaultTheme from 'vitepress/theme';
import type { Theme } from 'vitepress';
import { Icon } from '@iconify/vue';
import CustomIcon from './components/CustomIcon.vue';
import ImageZoom from './components/ImageZoom.vue';
import HeroSection from './components/HeroSection.vue';
import FeaturesSection from './components/FeaturesSection.vue';
import mediumZoom from 'medium-zoom';
import { onMounted, watch, nextTick } from 'vue';
import { useRoute } from 'vitepress';
import './style.css';
import 'medium-zoom/dist/style.css';

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
      nextTick(() => {
        mediumZoom('.vp-doc img:not(.VPImage):not(.no-zoom)', {
          background: 'rgba(0, 0, 0, 0.95)',
          margin: 24,
        });
      });
    };
    onMounted(() => {
      initZoom();
    });
    watch(
      () => route.path,
      () => initZoom(),
    );
  },
} satisfies Theme;
