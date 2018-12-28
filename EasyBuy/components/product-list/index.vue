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
      tempData.push({Name: "測試品名1", Pic:"/images/blackforest/P1.jpg", UnitPrice: "499", DiscountPrice: "299"});
      tempData.push({Name: "測試品名2", Pic:"/images/blackforest/P2.jpg", UnitPrice: "599", DiscountPrice: "399"});
      tempData.push({Name: "測試品名3", Pic:"/images/blackforest/P3.jpg", UnitPrice: "250", DiscountPrice: "200"});
      tempData.push({Name: "測試品名4", Pic:"/images/blackforest/P4.jpg", UnitPrice: "500", DiscountPrice: ""});
      tempData.push({Name: "測試品名5", Pic:"/images/blackforest/P5.jpg", UnitPrice: "430", DiscountPrice: "230"});
      tempData.push({Name: "測試品名6", Pic:"/images/blackforest/P6.jpg", UnitPrice: "450", DiscountPrice: "330"});
      tempData.push({Name: "測試品名7", Pic:"/images/blackforest/P7.jpg", UnitPrice: "440", DiscountPrice: ""});
      tempData.push({Name: "測試品名8", Pic:"/images/fruitcake/P1.jpg", UnitPrice: "899", DiscountPrice: "799"});
      tempData.push({Name: "測試品名9", Pic:"/images/fruitcake/P2.jpg", UnitPrice: "800", DiscountPrice: ""});
      tempData.push({Name: "測試品名10測試品名10", Pic:"/images/fruitcake/P3.jpg", UnitPrice: "599", DiscountPrice: ""});
      tempData.push({Name: "測試品名11", Pic:"/images/fruitcake/P4.jpg", UnitPrice: "1099", DiscountPrice: "999"});
      tempData.push({Name: "測試品名12", Pic:"/images/fruitcake/P5.jpg", UnitPrice: "1200", DiscountPrice: "1100"});
      return tempData;
    }
  }
};
</script>

<style>
@import "./product-list.css";
</style>