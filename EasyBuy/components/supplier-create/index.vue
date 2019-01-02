<template>
  <div class="product-list">
    <div class="content" v-if="products.length > 0">
      <product-item v-for="(item, index) in products" :item="item" :key="index"></product-item>
    </div>
    <div class="pager">

    </div>
  </div>
</template>

<script>
module.exports = {
  props:{
    data: {
      default: {},
      type: Object
    }
  },
  data: function() {
    return {
      products: [],
      who: "world"
    };
  },
  mounted() {
    this.getData();
  },
  components: {
    'twzipcode': http,
  },
  computed: {
  },
  methods:{
    getData(){
      this.products = [...this.getTempData()];
      console.log(this.products);
    }
  }
};
</script>

<style>
@import "./supplier-create.css";
</style>