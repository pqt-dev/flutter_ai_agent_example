<!--
Sync Impact Report
- Version change: 1.0.0 -> 1.1.0
- Modified principles:
  - II. State Management -> II. State Management & Immutable States
  - V. Architecture & Clean Code -> V. Clean Architecture & Models
- Added sections: None
- Removed sections: None
- Templates requiring updates: none
- Follow-up TODOs: none
-->
# flutter_ai_agent_example Constitution

## Core Principles

### I. Framework & Core
The project MUST be built using the latest stable version of Flutter. This ensures access to the latest performance improvements, UI components, and security patches.

### II. State Management & Immutable States
The project MUST use the **BLoC** (Business Logic Component) pattern for state management. Features must be separated into Blocs/Cubits, states, and events to maintain predictable state transitions. Furthermore, all state classes MUST be immutable and generated using the **freezed** package.

### III. Navigation
The project MUST use **go_router** for managing navigation and deep linking. All routes must be declaratively defined and organized to allow reliable, path-based routing.

### IV. Networking
The project MUST use **dio** for all HTTP networking. Network calls should be abstracted away from business logic, utilizing dio's interceptors for overarching authentication, logging, and error handling.

### V. Clean Architecture & Models
The project MUST be organized strictly according to **Clean Architecture** principles. Code MUST be separated into Presentation, Domain, and Data layers. Additionally, all model and entity classes MUST be immutable and generated using the **freezed** package to ensure safe data handling and robust state tracking.

## Additional Constraints

- **Dependencies**: Only authorized packages (BLoC, go_router, dio, freezed, build_runner) and heavily vetted UI libraries should be used.
- **Testing**: Business logic (Blocs) MUST be unit tested. All tests must pass before merging.

## Development Workflow

- All changes MUST be handled in separate feature branches and squashed upon merging.
- Code review MUST ensure that new screens have their routes properly configured in `go_router` and BLoC instances correctly scoped.
- Code generation via `build_runner` MUST be run whenever models or states using `freezed` are modified.

## Governance

Constitution supersedes all other practices. Any new architectural packages (like changing state management or navigation) MUST require an amendment to this constitution. All PRs/reviews must verify compliance with BLoC, go_router, dio, Clean Architecture, and freezed usage.

**Version**: 1.1.0 | **Ratified**: 2026-04-02 | **Last Amended**: 2026-04-02
