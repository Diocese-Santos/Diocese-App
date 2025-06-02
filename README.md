<div align="center">
  <img src=".github/assets/diocese_santos_logo.png" width="150" />
  <h1>Diocese Santos</h1>
  <p>⛪ Application of the Catholic Diocese of Santos ⛪</p>
</div>

# 👀 About

All the information about the Catholic Diocese of Santos in the palm of your hand. Favorite your parish, find out about the times and updates on masses and confessionals, and much more.

<div align="center">
  <img src=".github/assets/cover.png" width="700" /> 
</div>

<br>
<br>

# 🚀 Technologies

- [Flutter](https://flutter.dev/)
- [Segment](https://segment.com/)
- [Go Router](https://pub.dev/packages/go_router)
- [Rx Dart](https://pub.dev/packages/rxdart)

## 💻 Getting started

### Requirements

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio?hl=pt-br) or [XCode](https://developer.apple.com/xcode/)
- [Yarn](https://classic.yarnpkg.com/) or [NPM](https://www.npmjs.com/)

### Installing and running the project

_Clone the project and access the folder_

```bash
$ git clone git@github.com:Diocese-Santos/Diocese-App.git
$ cd Diocese-App
```

_Follow the steps below_

```bash
# Install the dependencies
$ flutter pub get

# Make a copy of '.env.example' to '.env'
# and set with YOUR environment variables.
$ cp .env.example .env

# Finally, run the api service in a development environment :)
$ flutter run

# Well done, Diocese App is started!
```

### Project Structure

```
lib/
│── domain/ # Regras de negócio e entidades
│ └── entities/
│
├── infra/ # Implementações técnicas (API, repositórios, etc)
│ ├── api/
│ ├── repositories/
│ └── tracking/
│
├── main/ # Entry point da aplicação e configurações principais
│ ├── factories/
│ ├── routing/
│ └── main.dart
│
├── presentation/ # Lógica de apresentação (Presenters)
│ └── presenters/
│ └── rx/ # Implementações reativas dos presenters
│ └── \*.dart
│
├── ui/ # Interface de usuário
│  └── core/ # Temas, estilos e componentes base
│  └── pages/ # Telas da aplicação
│  └── widgets/ # Componentes reutilizáveis
```
