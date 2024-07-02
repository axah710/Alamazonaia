## System Design

The system design is organized into two main parts: `core` and `features`. Each part contains several components that serve different purposes in the architecture.

### Core

The `core` directory contains essential modules and utilities that support the fundamental operations of the system.

- **DI (Dependency Injection)**
  - Utilizes `get_it` for dependency injection.
- **Networking**
  - Handles network operations using `Dio` and `Retrofit`.
- **Routing**
  - Manages the routing of the application.
- **Helpers**
  - Contains helper functions and utilities.
- **Theming**
  - Manages the application's theming.
- **Widgets**
  - Custom widgets used across the application.

### Features

The `features` directory includes different modules representing various features of the application. Each feature is further divided into `data`, `logic`, and `ui`.

#### Home

The `home` module within `features` includes:

- **Data**
  - **Models:** Data models used in the home feature.
  - **Repository (repo):** Handles data operations and interactions with the data source.
- **Logic**
  - **Cubit/States:** Manages the state of the home feature using Cubit for state management.
- **UI**
  - **Screens/Widgets:** User interface components specific to the home feature.
