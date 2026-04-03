# Research: Nested Navigation & State Preservation

## Decision 1: go_router StatefulShellRoute
- **Decision**: Use `StatefulShellRoute.indexedStack` from `go_router`.
- **Rationale**: The constitution strictly mandates `go_router`. Using `StatefulShellRoute.indexedStack` manages multiple distinct navigation stacks (one for each tab branch) and preserves the state of the tabs natively via an internal `IndexedStack` widget. This fulfills the nested routing and state preservation requirements out of the box without complex manual state saving.
- **Alternatives considered**: 
  - Standard `ShellRoute`: Fails SC-002 as it discards the nested state when switching tabs.
  - Custom `IndexedStack` + multiple `Navigator` widgets inside each tab managed by a `Cubit` (violates go_router unified declarative routing approach).

## Decision 2: Clean Architecture for Navigation
- **Decision**: Declare the `go_router` config in the core/presentation layer (`lib/core/router/`).
- **Rationale**: Routing is inherently a UI/Presentation concern in Clean Architecture. It shouldn't leak into Domain.
- **Alternatives considered**: None.
