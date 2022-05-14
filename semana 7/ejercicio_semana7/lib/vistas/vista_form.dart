import 'package:flutter/material.dart';

class VistaForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final Map<String, String> formularioPlantilla = {
      'nombre': '',
      'contrasena': ''
    };
    return Scaffold(
      appBar: AppBar(title: Text('Form')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  autofocus: false,
                  //keyboardType: TextInputType.emailAddress,
                  validator: (valorCampo) {
                    if (valorCampo!.isEmpty) {
                      return 'El campo es obligatorio';
                    }
                  },
                  onChanged: (valorCampo) {
                    formularioPlantilla['nombre'] = valorCampo;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      labelText: 'Nombre',
                      helperText: 'Coloca tu nombre',
                      icon: Icon(Icons.people_alt),
                      suffixIcon: Icon(Icons.abc),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (valorCampo) {
                    if (valorCampo!.isEmpty) {
                      return 'El campo es obligatorio';
                    }
                  },
                  onChanged: (valorCampo) {
                    formularioPlantilla['contrasena'] = valorCampo;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      labelText: 'Contrasena',
                      helperText: 'Coloca tu contrasena',
                      icon: Icon(Icons.people_alt),
                      suffixIcon: Icon(Icons.abc),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print('El formulario es valido');
                        return mostrarDialogo(
                            context, formularioPlantilla['nombre']);
                      } else {
                        print('El formulario no es valido');
                      }
                    },
                    child: Text('Iniciar sesion'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void mostrarDialogo(BuildContext context, String? nombre) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Bienvenido'),
            content: Text('Vamos a proceder a iniciar la sesion de ${nombre}'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Icon(Icons.cancel))
            ],
          );
        });
  }
}
