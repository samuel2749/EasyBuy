
$(function(){

  (function(){
      vueInit();
  })()
  
  function vueInit(){
      $('.supplier-create').each(function(i){
          Fun.createNewVue.call(this, i, "supplier-create", "supplier-create", "/components/supplier-create")
      });
      
      //createNewVue(1, "my-app", "my-component", "./components/test.vue");  
  }
})
