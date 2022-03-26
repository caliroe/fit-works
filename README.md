# Basic Architecture

Flutter Basic Application Architecture.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



```

lib       
├── assets........................................| Arquivos estáticos
│   ├── i18n......................................| Pacote de idiomas
│   │   ├── en_US.json 
│   │   └── pt_BR.json 
│   └── images....................................| Imagens (sempre no formato .svg)
│       └── dash.svg   
└── src...........................................| Raíz
    ├── app_module.dart
    ├── app_widget.dart
    ├── features..................................| Funcionalidades do projeto
    │   ├── auth..................................| FEATURE - autenticação
    │   │   ├── auth_module.dart
    │   │   ├── data
    │   │   │   ├── dto...........................| Mapeamento de dados para repository (define padrão para entrada e saída de dados)
    │   │   │   │   └── user_dto.dart
    │   │   │   └── repository....................| Comunicação externa
    │   │   │       └── login_repository.dart
    │   │   ├── domain
    │   │   │   ├── model.........................| Mapeamento de dados para a aplicação
    │   │   │   │   └── user.dart
    │   │   │   ├── repository
    │   │   │   │   └── login_interface.dart
    │   │   │   └── usecase
    │   │   │       └── login_usecase.dart
    │   │   └── presentation......................| Telas de apresentação da feature auth
    │   │       ├── view..........................| Telas do app
    │   │       │   ├── page
    │   │       │   │   └── login_page.dart
    │   │       │   └── widget....................| Componentes das telas do app
    │   │       └── viewmodel
    │   │           ├── login_viewmodel.dart
    │   │           └── login_viewmodel.g.dart
    │   ├── onboarding
    │   │   └── presentation
    │   │       ├── page
    │   │       └── widget
    │   └── sign_up...............................| Feature - criar conta
    └── main.dart.................................| Entrypoint - primeiro arquivo a ser chamado

```