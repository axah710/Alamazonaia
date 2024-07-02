## System Design

The system design is organized into two main parts: `core` and `features`. Each part contains several components that serve different purposes in the architecture.

### Core

The `core` directory contains essential modules and utilities that support the fundamental operations of the system.

- **DI (Dependency Injection)**
  - Utilizes `get_it` for dependency injection. ![Dependency Injection](https://img.icons8.com/ios/20/000000/dependency-injection.png)
- **Networking**
  - Handles network operations using `Dio` and `Retrofit`. ![Networking](https://img.icons8.com/ios/20/000000/cloud-connection.png)
- **Routing**
  - Manages the routing of the application. ![Routing](https://img.icons8.com/ios/20/000000/route.png)
- **Helpers**
  - Contains helper functions and utilities. ![Helpers](https://img.icons8.com/ios/20/000000/toolbox.png)
- **Theming**
  - Manages the application's theming. ![Theming](https://img.icons8.com/ios/20/000000/themes.png)
- **Widgets**
  - Custom widgets used across the application. ![Widgets](https://img.icons8.com/ios/20/000000/widgets.png)

### Features

The `features` directory includes different modules representing various features of the application. Each feature is further divided into `data`, `logic`, and `ui`.

#### Home

The `home` module within `features` includes:

- **Data** ![Data](https://img.icons8.com/ios/20/000000/database.png)
  - **Models:** Data models used in the home feature.
  - **Repository (repo):** Handles data operations and interactions with the data source.
- **Logic** ![Logic](https://img.icons8.com/ios/20/000000/process.png)
  - **Cubit/States:** Manages the state of the home feature using Cubit for state management.
- **UI** ![UI](https://img.icons8.com/ios/20/000000/user-interface.png)
  - **Screens/Widgets:** User interface components specific to the home feature.
