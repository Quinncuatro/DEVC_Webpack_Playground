<template>
  <table class="table table-bordered">
    <tbody>
      <tr>
        <td class="tableHeading">{{ cfargtablename }}</td>
      </tr>
      <tr v-for="row in rowInfo"
        :key="row.id"
        :row="row">
        <td>
          <a :href="row[1]">{{ row[0] }}</a>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  props: {
    cfargtablename: {
      type: String,
      required: true,
    },
    cfargtablecat: {
      type: String,
      required: true,
    },
  },
  created() {
    fetch(`./cfm/models/InfoTable.cfm?TableName=${this.cfargtablename}&TableCategory=${this.cfargtablecat}`)
      .then(res => res.json())
      .then((res) => {
        this.rowInfo = res.DATA;
        console.log(res.DATA);
      });
  },
  data() {
    return {
      rowInfo: {},
    };
  },
};

</script>

<style lang="stylus" scoped>
.table-bordered td
  border-color #5B616B

a:link, a:visited
  color #212121
  text-decoration underline

a:hover
  color #0071BC
  text-decoration underline
</style>
