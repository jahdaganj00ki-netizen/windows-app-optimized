import { defineConfig } from 'vite'

export default defineConfig({
  // Optimierungen für schwache Hardware
  build: {
    // Kleinere Chunks für bessere Performance
    chunkSizeWarningLimit: 500,
    rollupOptions: {
      output: {
        // Manuelle Chunk-Aufteilung
        manualChunks: {
          vendor: ['electron'],
          utils: ['src/utils']
        }
      }
    },
    // Minimale Sourcemaps für Debugging
    sourcemap: 'cheap-source-map',
    // Weniger aggressive Minification
    minify: 'esbuild',
    // Reduzierte Build-Parallelität
    terserOptions: {
      compress: {
        drop_console: true,
        drop_debugger: true
      }
    }
  },
  
  // Development Server Optimierungen
  server: {
    // Weniger aggressive HMR
    hmr: {
      overlay: false
    },
    // Reduzierte Watch-Optionen
    watch: {
      usePolling: false,
      interval: 1000
    }
  },
  
  // Optimierte Dependencies
  optimizeDeps: {
    // Nur notwendige Dependencies pre-bundlen
    include: ['electron'],
    // Ausschluss großer Libraries
    exclude: []
  },
  
  // Reduzierte Parallelität
  esbuild: {
    // Weniger aggressive Optimierungen
    target: 'es2020',
    // Kleinere Bundle-Größe
    treeShaking: true
  }
})