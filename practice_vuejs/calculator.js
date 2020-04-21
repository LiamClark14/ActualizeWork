var app = new Vue({
  el: "#app",
  data: {
    message: "Simple Addition Calculator",
    number1: 0,
    number2: 0,
    number3: 0,
    sum: 0,
  },
  methods: {
    computeSum: function () {
      this.sum = parseInt(this.number1) + parseInt(this.number2) + parseInt(this.number3)
    },
  },
});