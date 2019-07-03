<template>
  <section>
    <header>
      <h1>Create A Document</h1>
    </header>
    <main>
      <h2>Upload Your File</h2>
      <span>Accepted formats: pdf, jpg, png</span>
      <div class="droparea">
        <vue-dropzone
          @vdropzone-file-added="saveFile"
          id="filedrop"
          :options="dropOptions"
        ></vue-dropzone>
      </div>
      <button @click="upload">Upload!</button>
    </main>
  </section>
</template>

<script>
import vueDropzone from "vue2-dropzone";
import "vue2-dropzone/dist/vue2Dropzone.min.css";
import IPFS from "ipfs-http-client";

const ipfs = new IPFS({ host: "localhost", port: 5001 });

export default {
  data: () => ({
    dropOptions: {
      url: "https://httpbin.org/post"
    },
    file: "",
    docHash: ""
  }),
  components: {
    vueDropzone
  },
  methods: {
    saveFile(file) {
      this.file = file;
    },
    async upload() {
      const results = await ipfs.add(this.file);
      this.docHash = results[0].hash;

      // TODO: Store document hash somewhere locally, so deployer can easily query signatures.
    }
  }
};
</script>

<style lang="scss" scoped>
h1 {
  font-size: 3em;
}

.droparea {
  margin: 60px auto;
  width: 100%;
  max-width: 600px;
}
</style>
