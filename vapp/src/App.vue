<template>
  <div v-if="isDrizzleInitialized" id="app">
    <UploadDocument />
  </div>

  <div v-else>Loading...</div>
</template>

<script>
import UploadDocument from "./components/UploadDocument";
import { mapGetters } from "vuex";

export default {
  name: "app",
  components: {
    UploadDocument
  },

  computed: mapGetters("drizzle", ["isDrizzleInitialized"])
};
</script>

<style lang="scss">
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

button {
  width: 100%;
  max-width: 300px;
  background-color: #2c3e50;
  padding: 15px;
  margin: 0;
  font-size: 1em;
  font-weight: 600;
  color: white;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  outline: none;
  border: none;
  box-shadow: none;
  &:hover {
    cursor: pointer;
    background-color: #f05d21;
  }
  &:focus {
    border: none;
    outline: none;
    box-shadow: none;
  }
}
</style>
