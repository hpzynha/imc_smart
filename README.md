# Calculadora de IMC - Flutter 📱

[![Flutter Version](https://img.shields.io/badge/flutter-3.19.5-blue)](https://flutter.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

Um aplicativo intuitivo para cálculo de Índice de Massa Corporal (IMC) com visualização de categorias e interface moderna.

<p align="center">
  <img src="screenshots/demo.gif" alt="Demonstração do app" width="300">
</p>

## 📸 Capturas de Tela

<div align="center">
  <img src="screenshots/tela_inicial.png" width="30%" alt="Tela de entrada"/>
  <img src="screenshots/resultado_imc.png" width="30%" alt="Tela de resultado"/>
<!--   <img src="screenshots/categorias_imc.png" width="30%" alt="Categorias de IMC"/> -->
</div>

## ✨ Funcionalidades

- ✅ Cálculo instantâneo de IMC
- 🎨 Interface visual com feedback dinâmico
- 📊 Categorias coloridas com marcadores
- 📱 Layout responsivo para dispositivos móveis
- 🚨 Validação de campos de entrada
- 🌗 Suporte a temas claro/escuro

## 🚀 Começando

### Pré-requisitos
- Flutter 3.19.5+
- Android Studio/Xcode (para emuladores)
- Dispositivo físico com modo desenvolvedor ativado

## 🏗️ Arquitetura

- **Padrão BLoC** para gerenciamento de estado
- **Camada de Serviços** para cálculos matemáticos
- **Widgets Customizados** para UI consistente

## 🗺️ Roadmap

- [x] Cálculo básico de IMC
- [ ] Exportar resultados em PDF
- [ ] Sincronização com Google Fit
- [ ] Gráficos de evolução

## 📊 Especificações Técnicas

| Componente          | Tecnologia       | Versão  |
|---------------------|------------------|---------|
| Linguagem           | Dart             | 3.1.2   |
| Framework           | Flutter          | 3.19.5  |
| Gerenciamento Estado| Provider         | 6.0.5   |
| Testes Unitários    | Mockito          | 5.3.2   |
  
### Instalação
```bash
# Clone o repositório
git clone https://github.com/hpzynha/imc_smart.git

# Entre no diretório
cd imc_smart

# Instale as dependências
flutter pub get

# Execute no dispositivo conectado
flutter run

