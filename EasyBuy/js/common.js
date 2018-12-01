
$(function(){

    (function(){
        vueInit();
        setButton();
    })()
    
    function vueInit(){
        new Vue({
            el: '#my-app',
            components: {
                'my-component': httpVueLoader('./components/test.vue')
            }
        });    
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
