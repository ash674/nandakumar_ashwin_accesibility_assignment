export default {
  name: "Images",
  props: ["file"],

  data: function () {
    return {
      id: this.file.id,
      name: this.file.name,
      images: this.file.image,
    };
  },

  template: `
  <section  class="galleryPics">
    <router-link :to="'/detail/'+id">
    <img :src="'./images/'+ file.images" class="thumbs">
  
    </router-link>
    </section>
    `,
};
