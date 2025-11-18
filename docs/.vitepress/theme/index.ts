import DefaultTheme from 'vitepress/theme';
import type { Theme } from 'vitepress';
import { Icon } from '@iconify/vue';
import CustomIcon from './components/CustomIcon.vue';
import ImageZoom from './components/ImageZoom.vue';
import HeroSection from './components/HeroSection.vue';
import FeaturesSection from './components/FeaturesSection.vue';
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
  }
} satisfies Theme;
