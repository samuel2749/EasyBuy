<template>
    <div class="hello">Hello {{who}}</div>
</template>
 
<script>
module.exports = {
    data: function() {
        return {
            who: 'world'
        }
    },
    mounted() {
        console.log("vue is ready");
    },
}
</script>
 
<style>
.hello {
    background-color: #ffe;
}
</style>