import 'package:estados/model/cartModel.dart';
import 'package:estados/views/carrito.dart';
import 'package:estados/views/inventario.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


// estados
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CarritoModel()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router(),
      ),
    );
  }
}

GoRouter router() {
  return GoRouter(
    initialLocation: '/inventario',
    routes: [
      GoRoute(
        path: '/inventario',
        builder: (context, state) => Inventario(),
      ),
      GoRoute(
        path: '/carrito',
        builder: (context, state) => Carrito(),
      ),
    ],
  );
}
