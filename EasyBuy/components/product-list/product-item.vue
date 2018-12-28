<template>
    <a class="product-item">
      <img :src="item.Pic" class="img">
      <span class="title">{{item.Name}}</span>
      <div class="price-content" :class="item.DiscountPrice? 'discount': false">
        <span class="uint-price">{{item.UnitPrice}}</span>
        <span class="discount-price">{{item.DiscountPrice}}</span>
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
  }
}
</script>
<style>

</style>