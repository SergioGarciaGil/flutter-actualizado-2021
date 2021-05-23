import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogs {
  static void showMaterialDialog(
    BuildContext context, {
    String title,
    String body,
    String confirmText = 'Aceptar',
    String cancelText = 'Cancelar',
    VoidCallback onConfirm,
    VoidCallback onCancel,
  }) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return AlertDialog(
            title: title != null ? Text(title) : null,
            content: body != null ? Text(body) : null,
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (onConfirm != null) {
                      onConfirm();
                    }
                    //_logOut();
                  },
                  child: Text(confirmText)),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (onCancel != null) {
                      onCancel();
                    }
                  },
                  child: Text(
                    cancelText,
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          );
        });
  }
}
