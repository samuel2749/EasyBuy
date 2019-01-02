var Fun = (function () {
    var fun = {};
    fun.createNewVue = function(index, vueName, componentName, componentPath) {
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

    return fun;
})();