void main() {
  var price = 300000;
  var discount = 0;
  // if (isAvailableForDiscount) {
  //   discount = 50000;
  // }
  print('You need to pay: ${price - discount}');
}

void main2() {
  var price = 300000;
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }
  return discount;
}

var price = 300000;

void main3() {
  var discount = checkDiscounts(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscounts(num price) {
  num discount = 0;
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }
  return discount;
}

num checkDiscountss(num price) {
  num discount = 0;
  var discountApplied = true;
  if (!discountApplied) { // Error
    if (price >= 100000) {
      discount = 10 / 100 * price;

    }
  }
  return discount;
}