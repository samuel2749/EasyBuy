
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
            dataEle = self.find('#data'),
            data = JSON.parse(dataEle.text()),
            vueEle = "<_conponentName_ :data='data' :is-mobile='isMobile'></_conponentName_>",
            components = {};
        vueName = vueName + '-_index_';
        vueName = vueName.replace('_index_', index + 1);
        vueEle = vueEle.replace(/_conponentName_/g, componentName);
        dataEle.remove();
        self.attr('id', vueName);
        self.append(vueEle);
        components[componentName] = httpVueLoader(OB.OriginHost(componentPath));
        new Vue({
            el: '#' + vueName,
            data: { data: data, isMobile: window.IsMobileDevice === 'True' },
            components: components,
            mixins: [mixins]
        });
    }
})
