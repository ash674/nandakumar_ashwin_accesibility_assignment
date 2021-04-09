import { fetchData } from "./components/DataMiner.js";
import disp from "./components/DisplayComp.js";
import VideoFile from "./components/Video.js";

(() => {
  const routes = [
    { path: "/", component: disp },
    { path: "/detail/:id", component: VideoFile },
  ];

  const router = new VueRouter({
    routes, 
  });

  let vue_vm = new Vue({
    router: router,
    data: {
      heading: "Movies, TV shows and Audio"
    },
  }).$mount("#app");
})();
