<template>
    <a class="product-item">
      <img :src="item.Pic" class="img">
      <span class="title">{{item.Name}}</span>
      <div class="price-content" :class="item.DiscountPrice? 'discount': false">
        <span class="uint-price">{{getCurrency(item.UnitPrice)}}</span>
        <span class="discount-price" v-if="item.DiscountPrice">{{getCurrency(item.DiscountPrice)}}</span>
      </div>
    </a>
</template>

<script>
module.exports = {
  props:{
    item: {
      default: {},
      type: Object
    }
  },
  data: function() {
    return {
      
    }
  },
  mounted() {
  },
  methods:{
    getCurrency(pVal){
      return window.Global.currency + " " + pVal;
    }
  }
}
</script>
<style>

</style>