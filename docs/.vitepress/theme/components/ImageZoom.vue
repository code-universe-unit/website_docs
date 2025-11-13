<template>
  <img 
    :src="src" 
    :alt="alt" 
    :width="width" 
    :height="height"
    loading="lazy"
    decoding="async"
    class="zoom-image"
    @click="openModal"
  />
  
  <Teleport to="body" v-if="isMounted">
    <Transition name="modal">
      <div v-if="isOpen" class="image-modal" @click="closeModal">
        <div class="modal-content" @click.stop>
          <button class="close-button" @click="closeModal" aria-label="Close">&times;</button>
          <img 
            :src="src" 
            :alt="alt" 
            class="modal-image"
          />
        </div>
      </div>
    </Transition>
  </Teleport>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'

defineProps<{
  src: string
  alt?: string
  width?: string
  height?: string
}>()

const isOpen = ref(false)
const isMounted = ref(false)

onMounted(() => {
  isMounted.value = true
  
  const handleEscape = (e: KeyboardEvent) => {
    if (e.key === 'Escape' && isOpen.value) {
      closeModal()
    }
  }
  
  window.addEventListener('keydown', handleEscape)
  
  onUnmounted(() => {
    window.removeEventListener('keydown', handleEscape)
  })
})

const openModal = () => {
  isOpen.value = true
  if (typeof document !== 'undefined') {
    document.body.style.overflow = 'hidden'
  }
}

const closeModal = () => {
  isOpen.value = false
  if (typeof document !== 'undefined') {
    document.body.style.overflow = ''
  }
}
</script>

<style scoped>
.zoom-image {
  cursor: zoom-in;
  transition: opacity 0.2s ease;
}

.zoom-image:hover {
  opacity: 0.8;
}

.image-modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.95);
  z-index: 9999;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: zoom-out;
}

.modal-content {
  position: relative;
  max-width: 90vw;
  max-height: 90vh;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: default;
}

.modal-image {
  max-width: 100%;
  max-height: 90vh;
  object-fit: contain;
  cursor: default;
  box-shadow: 0 10px 60px rgba(0, 0, 0, 0.8);
  border-radius: 4px;
}

.close-button {
  position: absolute;
  top: -50px;
  right: 0;
  background: rgba(255, 255, 255, 0.15);
  border: 2px solid rgba(255, 255, 255, 0.3);
  border-radius: 50%;
  color: white;
  font-size: 32px;
  cursor: pointer;
  padding: 0;
  line-height: 1;
  width: 45px;
  height: 45px;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: background 0.2s ease, border-color 0.2s ease;
}

.close-button:hover {
  background: rgba(255, 255, 255, 0.25);
  border-color: rgba(255, 255, 255, 0.5);
}

.modal-enter-active,
.modal-leave-active {
  transition: opacity 0.3s ease;
}

.modal-enter-from,
.modal-leave-to {
  opacity: 0;
}

.modal-enter-active .modal-content,
.modal-leave-active .modal-content {
  transition: transform 0.3s ease;
}

.modal-enter-from .modal-content,
.modal-leave-to .modal-content {
  transform: scale(0.95);
}
</style>
