
$(function(){
    console.log("document is ready");
    new Vue({
        el: '#my-app',
        components: {
            'my-component': httpVueLoader('./components/test.vue')
        }
    });
})