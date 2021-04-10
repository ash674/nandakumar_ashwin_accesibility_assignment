import { fetchData } from "./DataMiner.js";

export default {
  name: "TheVidDetail",

  data: function () {
    return {
      id: this.$route.params.id,
      file: null
    };
  },

  template: `
    <div>
    <section v-if="file">
      <video controls class="video" ref="video" :src="'./images/' + file.video" type="video/mp4">
      </video>
  <p>Playing Now: {{ file.descrip }} <p>
    <a href="./index.html">Back to Menu</a>

      </section>
    
 </div>
  `,

  mounted: function () {
    fetchData("./includes/index.php?id=" + this.id)
      .then((data) => (this.file = data[0]))
      .catch((err) => console.error(err));
  }
};
