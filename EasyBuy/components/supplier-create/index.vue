<template>
  <div class="form">
    <p class="title">新增廠商</p>
    <div class="row">
      <label>名稱：</label>
      <div class="input_box">
        <input type="text" v-model="name">
      </div>
    </div>
    <div class="row">
      <label>電話：</label>
      <div class="input_box">
        <input type="text" v-model="phone" maxlength="10">
      </div>
    </div>
    <div class="row">
      <label>地址：</label>
      <div class="input_box">
        <twzipcode
          :class-names="{county: 'city', district: 'area', zipcode: 'zipcode'}"
          default-county="桃園市"
          default-district="中壢區"
          ref=twzipcode
        >
        </twzipcode>
        <input type="text" v-model="address">
      </div>
    </div>
    <div class="row">
      <a href="#" class="btn" @click.prevent.stop="onSend">新增</a>
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
      name: "",
      phone: "",
      address: ""
    };
  },
  mounted() {
  },
  components: {
    'twzipcode': window.Twzipcode$1
  },
  computed: {
  },
  methods:{
    onSend(){
      let sendObj = {Name: this.name, Phone: this.phone, Address: this.address};
      const {county, district, zipcode} = this.$refs.twzipcode;
      sendObj.City = county;
      sendObj.Area = district;
      $.post("/Supplier/Create", sendObj, function(data){
        console.log(data);
      }, "json");
    }
  }
};
</script>

<style>
@import "./supplier-create.css";
</style>