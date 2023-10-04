import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  static const name = '/snackbars';

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    const snackbar = SnackBar(
      content: Text('Hola Mundo'),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Título'),
          content: const Text('Contenido'),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancelar'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar y Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: const [
                    Text(
                      'En este diálogo se muestra información sobre la aplicación y también los paquetes que se han utilizado para su desarrollo.',
                    ),
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye),
        label: const Text('Show SnackBar'),
      ),
    );
  }
}
