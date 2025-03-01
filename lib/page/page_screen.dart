// ignore_for_file: deprecated_member_use
import 'package:fabio_marilia/widgets/components/carrossel_component.dart';
import 'package:fabio_marilia/widgets/text/text_pacific.dart';
import 'package:fabio_marilia/controller/controller.dart';
import 'package:fabio_marilia/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Scaffold(
      backgroundColor: Color(0xFF0f1027),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return SingleChildScrollView(
            child: Column(
              spacing: height(context, 0.01),
              children: [
                SizedBox(height: statusBar(context)),
                CarrosselComponent(images: controller.images),
                TextPacific(
                  text: 'Fábio&Marília',
                  fontSize: 30,
                  color: Colors.redAccent,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w800,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextPacific(
                    text:
                        'Hoje celebramos 1 ano daquele primeiro de Março, tomar a decisão de te pedir em namoro, foi minha melhor escolha. 365 dias de amor, companheirismo e momentos inesquecíveis. Muito obrigado por ser essa namorada incrível, meu porto seguro e minha inspiração diária. Esse só foi o primeiro de muitos anos ao seu lado! Te amo!❤️',
                    color: Colors.white,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: height(context, 0.01)),
                SizedBox(
                  width: 150,
                  child: Divider(
                    color: Color(0xFF591f4e),
                  ),
                ),
                SizedBox(height: height(context, 0.01)),
                TextPacific(
                  text: 'Juntos há',
                  fontSize: 30,
                  color: Colors.white,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w600,
                ),
                _buildTimeBox(controller.years, 'anos'),
                _buildTimeBox(controller.days, 'dias'),
                _buildTimeBox(controller.hours, 'horas'),
                _buildTimeBox(controller.minutes, 'minutos'),
                _buildTimeBox(controller.seconds, 'segundos'),
              ],
            ),
          );
        }

        return Center(
          child: Text(
            'Site suporte apenas para celular',
            style: TextStyle(color: Colors.white),
          ),
        );
      }),
    );
  }

  Widget _buildTimeBox(RxInt value, String label) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFF0f1027),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF801246),
                blurRadius: 10,
                spreadRadius: 4,
                offset: Offset(-7, 0), // Sombra à esquerda
              ),
              BoxShadow(
                color: Color(0xFF43175d),
                blurRadius: 10,
                spreadRadius: 4,
                offset: Offset(7, 0), // Sombra à direita
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                value.toString().padLeft(2, '0'),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                label,
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
