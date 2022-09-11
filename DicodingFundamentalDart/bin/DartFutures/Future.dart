void main() {
  final myFuture = Future(() {
    print('Creating the future');
    return 12;
  });
  print('main() done');

  Future<String> getOrder() {
    return Future.delayed(Duration(seconds: 3), () {
      var isStockAvailable = false;
      if (isStockAvailable) {
        return 'Coffee Boba';
      } else {
        throw 'stok kami habis';
      }
    });
  }

  getOrder().then((nilai) {
    print('pesanan kamu : $nilai');
  })
      .catchError((error) {
    print('maaf $error');
  })
      .whenComplete(() {
    print('terimakasih');
  });
  print('mendapatkan pesananmu');
}

