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
    'product-item': httpVueLoader('./product-item.vue')
  },
  computed: {
  },
  methods:{
    getData(){
      this.products = [...this.getTempData()];
      console.log(this.products);
    },
    getTempData(){
      var tempData = [];
      tempData.push({Name: "測試品名1", Pic:"/images/blackforest/P1.jpg", UnitPrice: "299", DiscountPrice: "499"});
      tempData.push({Name: "測試品名2", Pic:"/images/blackforest/P2.jpg", UnitPrice: "399", DiscountPrice: "599"});
      tempData.push({Name: "測試品名3", Pic:"/images/blackforest/P3.jpg", UnitPrice: "200", DiscountPrice: "250"});
      tempData.push({Name: "測試品名4", Pic:"/images/blackforest/P4.jpg", UnitPrice: "500", DiscountPrice: ""});
      tempData.push({Name: "測試品名5", Pic:"/images/blackforest/P5.jpg", UnitPrice: "230", DiscountPrice: "430"});
      tempData.push({Name: "測試品名6", Pic:"/images/blackforest/P6.jpg", UnitPrice: "330", DiscountPrice: "450"});
      tempData.push({Name: "測試品名7", Pic:"/images/blackforest/P7.jpg", UnitPrice: "440", DiscountPrice: ""});
      tempData.push({Name: "測試品名8", Pic:"/images/fruitcake/P1.jpg", UnitPrice: "599", DiscountPrice: "899"});
      return tempData;
    }
  }
};
</script>

<style>
@import "product-list.css";
</style>