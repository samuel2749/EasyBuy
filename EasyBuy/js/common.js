
$(function(){

    (function(){
        vueInit();
        setButton();
    })()
    
    function vueInit(){
        $('.list').each(function(i){
            Fun.createNewVue.call(this, i, "list", "product-list", "/components/product-list")
        });
        
        //createNewVue(1, "my-app", "my-component", "./components/test.vue");  
    }

    function setButton(){
        console.log($('#logout'));
        $('#logout').on('click', function(e){
            e.preventDefault();
            $.post('/Account/LogOff', {__RequestVerificationToken: $('[name=__RequestVerificationToken]').val()}, function(data){
                window.location.reload();
                console.log(data);
            })
        })
        
    }

})
