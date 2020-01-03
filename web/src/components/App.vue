<template>
    <div class="root">
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#/">Asgard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <router-link tag="a" class="nav-item nav-link" :to="{name: 'Index'}">Home</router-link>
                </div>
            </div>
        </nav>
        <div id="page" class="container-fluid top-padding bottom-padding">
            <div id="page-body" class="container-fluid">
                <router-view :key="$route.fullPath"></router-view>
            </div>
        </div>
    </div>
</template>

<script>
    import 'bootstrap';
    export default {

    }
</script>