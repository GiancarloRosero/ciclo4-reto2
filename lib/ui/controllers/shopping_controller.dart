import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../domain/product.dart';

class ShoppingController extends GetxController {
  // lista de productos
  var entries = <Product>[].obs;
  // el valor total de la compra
  var total = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // los dos elementos que vamos a tener en la tienda
    entries.add(Product(0, "Toy car", 10));
    entries.add(Product(1, "Toy house", 20));
  }

  void calcularTotal() {
    var newTotal = 0;
    // TODO
    // calcular el valor total de los elementos en el carro de compras
    newTotal = entries
        .map((element) => element.quantity * element.price)
        .reduce((value, element) => value + element);
    total.value = newTotal;
  }

  agregarProducto(id) {
    // TODO
    // Encontrar el elemento usando el id, revisar el método firstWhere de la lista
    // después obtener el index de ese elemento, revisar el método indexOf de la lista
    // después hacer el incremento en la cantidad
    // finalmente actualizar entries usando el indice y el elemento actualizado
    var index =
        entries.indexOf(entries.firstWhere((element) => element.id == id));
    entries[index].quantity += 1;
    entries.refresh();

    calcularTotal();
  }

  quitarProducto(id) {
    // TODO
    // similar a agregarProducto
    // validar cuando la cantidad es igual a cero
    var index =
        entries.indexOf(entries.firstWhere((element) => element.id == id));
    if (entries[index].quantity > 0) {
      entries[index].quantity -= 1;
    }
    entries.refresh();
    calcularTotal();
  }
}
