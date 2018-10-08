<template>
  <nav class="navbar navbar-expand-lg">
    <button class="navbar-toggler" type="button" data-toggle="collapse"
      data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <router-link class="nav-link" to="/">Home</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/Forms">Forms</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/HR">HR</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/IT">IT</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/Operations">Operations</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/WhatsNew">What's New</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link" to="/about">About</router-link>
        </li>
      </ul>
    </div>
  </nav>
</template>

<style lang="stylus">
nav {
  margin-top: -10px;
}

.nav-link {
  font-size: 17px;
}

.navbar {
  background-color: #981b1e;
  border-color: #cd2026;
}

.navbar {
  color: #ffffff;
}

.navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
  color: #ffffff;
}

.navbar .navbar-text {
  color: #ffffff;
}

.navbar .navbar-nav > li > a {
  color: #ffffff;
  padding-top: 15px;
  padding-bottom: 15px;
}

.navbar .navbar-nav > li > a:hover, .navbar .navbar-nav > li > a:focus {
  color: #000000;
  background-color: #b8383b;
}

.navbar .navbar-nav > .active > a, .navbar .navbar-nav > .active > a:hover, .navbar .navbar-nav > .active > a:focus {
  color: #ffffff;
  background-color: #cd2026;
}

.navbar .navbar-nav > .open > a, .navbar .navbar-nav > .open > a:hover, .navbar .navbar-nav > .open > a:focus {
  color: #ffffff;
  background-color: #cd2026;
}

.navbar .navbar-toggle {
  border-color: #ffffff;
}

.navbar .navbar-toggle:hover, .navbar .navbar-toggle:focus {
  background-color: #cd2026;
}

.navbar .navbar-toggle .icon-bar {
  background-color: #ffffff;
}

.navbar .navbar-collapse, .navbar .navbar-form {
  border-color: #ffffff;
}

.navbar .navbar-link {
  color: #ffffff;
}

.navbar .navbar-link:hover {
  color: #ffffff;
}

.navLink:link, .navLink:visited {
  text-decoration: none;
}

.navLinkFalse {
  cursor: default;
}

.navbar .navbar-nav {
  float: none;
  vertical-align: top;
}

.navbar .navbar-collapse .navbar-nav #navbarSupportedContent {
  text-align: center;
}

@media (max-width: 767px) {
  .navbar .navbar-nav .open .dropdown-menu > li > a {
    color: #ffffff;
  }

  .navbar .navbar-nav .open .dropdown-menu > li > a:hover, .navbar .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #ffffff;
  }

  .navbar .navbar-nav .open .dropdown-menu > .active > a, .navbar .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #ffffff;
    background-color: #cd2026;
  }
}

.navbar-toggle {
  margin-right: 25px;
}
</style>
