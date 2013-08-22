cart = [{price: 5, tax: 1}, {price: 10, tax: 1}]

cart.inject(0) {|total, item| total + item [:price] + item[:tax]}