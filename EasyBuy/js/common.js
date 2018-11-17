
$(function(){
    
    new Vue({
        el: '#my-app',
        components: {
            'my-component': httpVueLoader('./components/test.vue')
        }
    });

    function setButton(){
        $('#logout').on('click', function(e){
            e.preventDefault();
            $.post('/Account/LogOff', {__RequestVerificationToken: $('[name=__RequestVerificationToken]').val()}, function(data){
                console.log(data);
            })
        })
    }

})
