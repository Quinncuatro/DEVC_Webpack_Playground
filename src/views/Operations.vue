<template>
  <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-offset-1 col-md-5">
      <InfoTable cfargtablename="Miscellaneous Links" cfargtablecat="Home" />
    </div>
    <div class="col-xs-12 col-sm-6 col-md-5">
      <InfoTable cfargtablename="Employee Recognition" cfargtablecat="Home" />
    </div>
  </div>
</template>

<script>
import InfoTable from '@/components/InfoTable.vue';

export default {
  components: {
    InfoTable,
  },
};
</script>
