<template>
  <header id="header">
    <a href="/">
      <img alt="Vue logo" class="logo" src="/src/assets/logo.png" width="125" height="125" />
    </a>

    <div>
      <h1>The Library of Roosey</h1>
    </div>
  </header>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
}

header#header {
  border-bottom: 1px solid var(--color-border);
  padding: 1rem;
  width: 100%;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }
}
</style>
