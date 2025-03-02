<template>
 User {{ $route.params.id }}
</template>

<style scoped></style>

<script setup>
import { useRoute } from 'vue-router'
const route = useRoute()

console.log(route.params.id)
</script>
