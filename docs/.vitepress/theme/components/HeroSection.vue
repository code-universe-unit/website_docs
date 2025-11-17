<template>
  <div class="hero-section">
    <div class="hero-background">
      <div class="gradient-orb orb-1"></div>
      <div class="gradient-orb orb-2"></div>
      <div class="gradient-orb orb-3"></div>
    </div>
    
    <div class="hero-content">
      <div class="hero-badge">
        <Icon icon="mdi:hammer-wrench" />
        <span>Premium MLO Projects</span>
      </div>
      
      <h1 class="hero-title">
        <span class="gradient-text">GreenCom</span>
        <span class="hero-title-secondary">Mapping</span>
      </h1>
      
      <p class="hero-description">
        Professional FiveM mapping documentation. High-quality MLO projects for your server.
      </p>
      
      <div class="hero-actions">
        <a href="/mlo/logistic-company-v2" class="hero-btn hero-btn-primary">
          <Icon icon="mdi:book-open-page-variant" />
          <span>Browse Projects</span>
        </a>
        <a href="https://discord.gg/P3f8XQWpfc" class="hero-btn hero-btn-secondary" target="_blank">
          <Icon icon="mdi:discord" />
          <span>Join Discord</span>
        </a>
      </div>
      
      <div class="hero-stats">
        <div class="stat-item">
          <div class="stat-value">50+</div>
          <div class="stat-label">MLO Projects</div>
        </div>
        <div class="stat-item">
          <div class="stat-value">10K+</div>
          <div class="stat-label">Downloads</div>
        </div>
        <div class="stat-item">
          <div class="stat-value">5★</div>
          <div class="stat-label">Rating</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { Icon } from '@iconify/vue';
</script>

<style scoped>
.hero-section {
  position: relative;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  padding: 64px 24px;
}

.hero-background {
  position: absolute;
  inset: 0;
  overflow: hidden;
  z-index: 0;
}

.gradient-orb {
  position: absolute;
  border-radius: 50%;
  filter: blur(80px);
  opacity: 0.3;
  animation: float 20s ease-in-out infinite;
}

.orb-1 {
  width: 500px;
  height: 500px;
  background: radial-gradient(circle, #099268, transparent);
  top: -10%;
  right: -10%;
  animation-delay: 0s;
}

.orb-2 {
  width: 400px;
  height: 400px;
  background: radial-gradient(circle, #0aa876, transparent);
  bottom: -10%;
  left: -10%;
  animation-delay: 7s;
}

.orb-3 {
  width: 300px;
  height: 300px;
  background: radial-gradient(circle, #087d5b, transparent);
  top: 50%;
  left: 50%;
  animation-delay: 14s;
}

@keyframes float {
  0%, 100% {
    transform: translate(0, 0) scale(1);
  }
  33% {
    transform: translate(30px, -30px) scale(1.1);
  }
  66% {
    transform: translate(-20px, 20px) scale(0.9);
  }
}

.hero-content {
  position: relative;
  z-index: 1;
  text-align: center;
  max-width: 900px;
  animation: fadeInUp 1s ease-out;
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(40px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.hero-badge {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  padding: 8px 20px;
  background: rgba(9, 146, 104, 0.1);
  border: 1px solid rgba(9, 146, 104, 0.3);
  border-radius: 50px;
  color: #099268;
  font-size: 14px;
  font-weight: 500;
  margin-bottom: 32px;
  animation: fadeInUp 1s ease-out 0.2s backwards;
}

.hero-title {
  font-size: clamp(48px, 8vw, 80px);
  font-weight: 800;
  line-height: 1.1;
  margin: 0 0 24px 0;
  letter-spacing: -0.03em;
  animation: fadeInUp 1s ease-out 0.3s backwards;
}

.gradient-text {
  background: linear-gradient(120deg, #099268, #0aa876);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.hero-title-secondary {
  display: block;
  color: rgba(255, 255, 255, 0.9);
  margin-top: 8px;
}

.hero-description {
  font-size: clamp(18px, 3vw, 24px);
  color: rgba(255, 255, 255, 0.7);
  line-height: 1.6;
  margin: 0 0 48px 0;
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
  animation: fadeInUp 1s ease-out 0.4s backwards;
}

.hero-actions {
  display: flex;
  gap: 16px;
  justify-content: center;
  flex-wrap: wrap;
  animation: fadeInUp 1s ease-out 0.5s backwards;
}

.hero-btn {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  padding: 16px 32px;
  border-radius: 12px;
  font-size: 16px;
  font-weight: 600;
  text-decoration: none;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  cursor: pointer;
}

.hero-btn-primary {
  background: linear-gradient(135deg, #099268, #087d5b);
  color: white;
  box-shadow: 0 4px 20px rgba(255, 107, 53, 0.4);
}

.hero-btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 30px rgba(255, 107, 53, 0.6);
}

.hero-btn-secondary {
  background: rgba(255, 255, 255, 0.05);
  color: white;
  border: 1px solid rgba(255, 255, 255, 0.1);
}

.hero-btn-secondary:hover {
  background: rgba(255, 255, 255, 0.1);
  border-color: rgba(255, 107, 53, 0.5);
  transform: translateY(-2px);
}

.hero-stats {
  display: flex;
  gap: 48px;
  justify-content: center;
  margin-top: 80px;
  padding-top: 48px;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  animation: fadeInUp 1s ease-out 0.6s backwards;
}

.stat-item {
  text-align: center;
}

.stat-value {
  font-size: 36px;
  font-weight: 700;
  background: linear-gradient(120deg, #099268, #0aa876);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  margin-bottom: 8px;
}

.stat-label {
  font-size: 14px;
  color: rgba(255, 255, 255, 0.6);
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

@media (max-width: 768px) {
  .hero-stats {
    gap: 32px;
  }
  
  .stat-value {
    font-size: 28px;
  }
  
  .hero-actions {
    flex-direction: column;
  }
  
  .hero-btn {
    width: 100%;
    justify-content: center;
  }
}
</style>
