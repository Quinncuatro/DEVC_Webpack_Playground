<template>
  <div class="container-fluid">
    <div id="app">
      <EliHeader />
      <EliNav />
      <div class="bodyThing">
        <router-view/>
      </div>
      <EliFooter />
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import EliFooter from '@/components/EliFooter.vue';
import EliHeader from '@/components/EliHeader.vue';
import EliNav from '@/components/EliNav.vue';
import HelloWorld from '@/components/HelloWorld.vue';

export default {
  name: 'home',
  components: {
    EliHeader,
    EliFooter,
    EliNav,
    HelloWorld,
  },
};
</script>

<style lang="stylus">
*
  padding 0
  margin 0
  font-family 'Source Sans Pro', sans-serif
  font-size 14px
  font-weight normal

html, body
  margin 0
  padding 0
  height 100%

body
  background-color #FFFFFF
  font-size 21px

.container-fluid
  padding 0
  min-height 100%
  width 100%
  position relative

.row
  margin-left 0
  margin-right 0

.title-centered
  margin 0 auto !important
  float none !important

table.mainMenu
  background-color #042981
  width 100%
  margin-left auto
  margin-right auto

table.box
  border-width 1px
  border-spacing 2px
  border-color #CCC
  border-collapse collapse
  background-color #fff
  border-style solid

.warningText
  color #981b1e

.indexImageBar
  margin-right 25px
  margin-left 25px

th.box
  background-color #CCC
  font-weight normal

.tableHeading
  color #FFF
  text-align center
  background: #112e51
  font-size 16px

.tableSubHeading
  color #000
  text-align center
  background #aeb0b5
  font-size 14px

.headerHalf
  width 50%

.headerThird
  width 33.33333%

.blankRow
  height 37px !important

.smallLinks
  font-size 9px

.smallLinks a:link, a:visited
  font-size 9px

.smallLinks a:hover
  font-size 9px

.titleTable
  display inline-block
  float none
  vertical-align top

.table > tbody > tr > td
  padding 8px
</style>
