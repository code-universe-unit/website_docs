<script setup lang="ts">
import { Icon } from '@iconify/vue';

interface Props {
  icon: string;
  size?: string | number;
}

const props = withDefaults(defineProps<Props>(), {
  size: '1em'
});
</script>

<template>
  <Icon :icon="props.icon" :width="props.size" :height="props.size" />
</template>

<style scoped>
.iconify {
  display: inline-block;
  vertical-align: middle;
}
</style>
