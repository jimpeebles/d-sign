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
import IPFS from "ipfs";

// Initialize IPFS node
const node = new IPFS();

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
      // once the node is ready
      node.once("ready", () => {
        // convert your data to a Buffer and add it to IPFS
        node.add(IPFS.Buffer.from(this.file), (err, files) => {
          if (err) return console.error(err);
          this.docHash = files[0].hash;
        });
      });
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
