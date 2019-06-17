<template>
  <div v-if="isDrizzleInitialized" id="app">
    <UploadDocument />
    <!-- <img alt="Vue logo" src="./assets/logo.png" />

    <div class="section">
      <h2>Show the Accounts</h2>
      <drizzle-account units="Ether" :precision="2" />
    </div>

    <div class="section">
      <h2>Tutorial Token</h2>
      <TutorialToken />
    </div>

    <div class="section">
      <h2>Simple Storage</h2>
      <SimpleStorage />
    </div>

    <div class="section">
      <h2>Complex Storage</h2>
      <ComplexStorage />
    </div> -->
  </div>

  <div v-else>Loading...</div>
</template>

<script>
import TutorialToken from "./TutorialToken";
import SimpleStorage from "./SimpleStorage";
import ComplexStorage from "./ComplexStorage";
import UploadDocument from "./components/UploadDocument";
import { mapGetters } from "vuex";

export default {
  name: "app",
  components: {
    ComplexStorage,
    TutorialToken,
    SimpleStorage,
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
