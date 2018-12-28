
$(function(){

    (function(){
        vueInit();
        setButton();
    })()
    
    function vueInit(){
        $('.list').each(function(i){
            createNewVue.call(this, i, "list", "product-list", "/components/product-list")
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

    function createNewVue(index, vueName, componentName, componentPath) {
        var self = $(this),
            vueEle = "<_conponentName_></_conponentName_>",
            components = {};
        vueName = vueName + '-_index_';
        vueName = vueName.replace('_index_', index + 1);
        vueEle = vueEle.replace(/_conponentName_/g, componentName);
        self.attr('id', vueName);
        self.append(vueEle);
        components[componentName] = httpVueLoader(componentPath);
        new Vue({
            el: '#' + vueName,
            data: {},
            components: components
            //mixins: [mixins]
        });
    }
})
