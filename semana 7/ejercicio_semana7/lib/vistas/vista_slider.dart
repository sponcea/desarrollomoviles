import 'package:flutter/material.dart';

class VistaSlider extends StatefulWidget {
  const VistaSlider({Key? key}) : super(key: key);

  @override
  State<VistaSlider> createState() => _VistaSliderState();
}

class _VistaSliderState extends State<VistaSlider> {
  //cada vez que se actualice este valor, le avisamos a la vista, con setState()
  double valorSlider = 100;
  bool switchActivo = true;
  @override
  Widget build(BuildContext context) {
    final String imagenUrl =
        'https://w0.peakpx.com/wallpaper/798/806/HD-wallpaper-aioria-de-leo-3-caballeros-del-zodiaco-leo.jpg';
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider y switch'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              enabled: switchActivo,
              obscureText: true,
              validator: (valorCampo) {
                if (valorCampo!.isEmpty) {
                  return 'El campo es obligatorio';
                }
              },
              onChanged: (valorCampo) {
                print(valorCampo);
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
            Slider(
                value: valorSlider,
                min: 20,
                max: 400,
                onChanged: switchActivo
                    ? (valor) {
                        setState(() {
                          print(valor);
                          valorSlider = valor;
                        });
                      }
                    : null),
            SwitchListTile(
                title: Text('activar Slider'),
                value: switchActivo,
                onChanged: (activo) {
                  switchActivo = activo;
                  setState(() {});
                }),
            Expanded(
                child: SingleChildScrollView(
                    child: Image(
                        width: valorSlider, image: NetworkImage(imagenUrl))))
          ],
        ),
      ),
    );
  }
}
