<template>
  <div class="features-grid">
    <div class="feature-card" v-for="(feature, index) in features" :key="index">
      <div class="feature-icon">
        <Icon :icon="feature.icon" />
      </div>
      <h3 class="feature-title">{{ feature.title }}</h3>
      <p class="feature-description">{{ feature.description }}</p>
    </div>
  </div>
</template>

<script setup lang="ts">
import { Icon } from '@iconify/vue';

const features = [
  {
    icon: 'mdi:cube-outline',
    title: 'High-Quality MLO',
    description: 'Professional interior mapping with optimized performance and stunning visuals.'
  },
  {
    icon: 'mdi:lightning-bolt',
    title: 'Optimized Performance',
    description: 'Lightweight and efficient maps that won\'t slow down your server.'
  },
  {
    icon: 'mdi:palette',
    title: 'Custom Design',
    description: 'Unique and detailed interiors crafted with attention to every element.'
  },
  {
    icon: 'mdi:lifebuoy',
    title: 'Full Support',
    description: 'Comprehensive documentation and active community support on Discord.'
  },
  {
    icon: 'mdi:update',
    title: 'Regular Updates',
    description: 'Continuous improvements and new features added regularly.'
  },
  {
    icon: 'mdi:check-decagram',
    title: 'Tested & Reliable',
    description: 'Thoroughly tested on multiple servers to ensure stability.'
  }
];
</script>

<style scoped>
.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 24px;
  padding: 80px 24px;
  max-width: 1200px;
  margin: 0 auto;
}

.feature-card {
  background: rgba(26, 26, 26, 0.6);
  backdrop-filter: blur(12px);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 16px;
  padding: 32px;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  position: relative;
  overflow: hidden;
}

.feature-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 1px;
  background: linear-gradient(90deg, transparent, #099268, transparent);
  opacity: 0;
  transition: opacity 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-8px);
  border-color: rgba(255, 107, 53, 0.3);
  box-shadow: 0 12px 40px rgba(255, 107, 53, 0.2);
}

.feature-card:hover::before {
  opacity: 1;
}

.feature-icon {
  width: 64px;
  height: 64px;
  background: linear-gradient(135deg, rgba(255, 107, 53, 0.2), rgba(255, 87, 34, 0.1));
  border: 1px solid rgba(255, 107, 53, 0.3);
  border-radius: 16px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 32px;
  color: #099268;
  margin-bottom: 24px;
  transition: all 0.3s ease;
}

.feature-card:hover .feature-icon {
  transform: scale(1.1) rotate(5deg);
  box-shadow: 0 8px 24px rgba(255, 107, 53, 0.4);
}

.feature-title {
  font-size: 20px;
  font-weight: 600;
  color: rgba(255, 255, 255, 0.95);
  margin: 0 0 12px 0;
  line-height: 1.4;
}

.feature-description {
  font-size: 15px;
  color: rgba(255, 255, 255, 0.65);
  line-height: 1.6;
  margin: 0;
}

@media (max-width: 768px) {
  .features-grid {
    grid-template-columns: 1fr;
    padding: 48px 16px;
  }
}
</style>
