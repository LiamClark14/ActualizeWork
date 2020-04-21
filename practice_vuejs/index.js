var app = new Vue({
  el: "#app",
  data: {
    message: "Hello from JavaScript!",
    name: "Liam",
  },
  methods: {
    changeMessage: function () {
      this.message = "I TOLD YOU NOT TO PRESS THE BUTTON!!!!"
    },
  },
});