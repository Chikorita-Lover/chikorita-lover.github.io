<template>
  <header id="header">
    <div id="logo">
      <a href="/">
        <img alt="Site logo" class="logo" src="/src/assets/logo.png" width="100" height="100" />
      </a>
      <div>
        <h1>The Library of Roosey</h1>
      </div>
    </div>
  </header>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
  line-height: 1.0;
}

div#logo {
  display: flex;
  place-items: center;
  margin: auto;
  width: 100%;
  max-width: 1280px;
}

header#header {
  border-bottom: 1px solid var(--color-border);
  padding: 1rem;
  width: 100%;
}
</style>
