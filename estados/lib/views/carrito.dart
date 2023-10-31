import 'package:estados/model/cartModel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
// Import the CartModel

class Carrito extends StatelessWidget {
  const Carrito({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CarritoModel>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Carrito'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go('/inventario'),
            ),
          ),
          body: cart.cartItems.isEmpty
              ? const Center(
                  child: Text('No hay nada en el carrito!!'),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: cart.cartItems.length,
                        itemBuilder: (context, index) {
                          final product = cart.cartItems[index];
                          return ListTile(
                            title: Text(product.name),
                            subtitle: Text('\$${product.price.toString()}'),
                            trailing: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue),
                              onPressed: () {
                                cart.removeFromCart(product);
                              },
                              child: const Text('-'),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16.0, // Adjust the height as needed
                    ),
                    Text(
                      'Precio total: \$${cart.totalAmount.toString()}',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
