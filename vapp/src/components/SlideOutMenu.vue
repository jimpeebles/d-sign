<template>
  <nav>
    <ul>
      <li>Upload Document</li>
      <li>View + Sign</li>
      <li>See Signatures</li>
    </ul>
  </nav>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
nav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  max-width: 300px;
  height: 100vh;
  background-color: azure;
  text-align: left;
}
ul {
  list-style: none;
}
li {
  font-weight: 500;
  font-size: 20px;
  margin: 10px 0px;
}
</style>
