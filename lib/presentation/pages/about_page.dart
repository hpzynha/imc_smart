import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/gradient_text.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.formFieldBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: GradientText(
            text: 'IMC Smart',
            gradient: AppColors.buttonGradient,
            style: AppTextStyles.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _buildSection(
                title: 'Sobre o IMC Smart',
                content:
                    'O IMC Smart é uma aplicação web simples e intuitiva projetada para ajudar você a calcular e entender seu Índice de Massa Corporal (IMC).\nNosso objetivo é fornecer uma ferramenta fácil de usar que permita que qualquer pessoa monitore seu IMC e compreenda melhor sua saúde corporal.'),
            SizedBox(height: 20),
            _buildSection(
                title: 'Porque usar o IMC Smart',
                content: '''• Interface limpa e minimalista, sem distrações
• Cálculo instantâneo e preciso do IMC
• Informações detalhadas sobre as categorias de IMC
• Totalmente responsivo - funciona em qualquer dispositivo
• Sem necessidade de cadastro ou login
• Gratuito e sem anúncios'''),
            SizedBox(height: 20),
            _buildSection(
                title: 'Privacidade',
                content:
                    'Valorizamos sua privacidade. O IMC Smart não armazena nenhum dado pessoal. Todos os cálculos são realizados localmente no seu navegador, e nenhuma informação é enviada para servidores externos.'),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  '"O IMC Smart foi desenvolvido com o objetivo de ser uma ferramenta simples e eficaz para ajudar as pessoas a monitorarem sua saúde de forma consciente."'),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildSection({required String title, required String content}) {
  return Column(
    children: [
      Text(title, style: AppTextStyles.title),
      SizedBox(height: 10),
      Text(content, style: AppTextStyles.content),
    ],
  );
}
