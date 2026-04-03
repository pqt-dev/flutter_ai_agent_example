# Implementation Plan: Bottom Navigation

**Branch**: `001-bottom-navigation` | **Date**: 2026-04-03 | **Spec**: [spec.md](../spec.md)
**Input**: Feature specification from `/specs/001-bottom-navigation/spec.md`

## Summary

Build the main application shell with a persistent bottom navigation bar containing 4 tabs (Dashboard, Favourite, Notification, Profile). Each tab must support nested routing with full state preservation when switching, utilizing `go_router`'s `StatefulShellRoute.indexedStack`.

## Technical Context

**Language/Version**: Dart (Latest Stable)  
**Primary Dependencies**: `flutter`, `go_router`
**Storage**: N/A  
**Testing**: `flutter_test` (Widget Tests for navigation)  
**Target Platform**: Mobile App (iOS / Android)  
**Project Type**: Mobile Application  
**Performance Goals**: Seamless 60FPS UI rendering on tab switch.  
**Constraints**: Bottom bar must stay visible even on deeply nested sub-routes within a tab.  
**Scale/Scope**: 4 core tab pillars.

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

- [x] **Framework & Core**: Uses latest Flutter.
- [x] **State Management**: Native preservation handled by go-router. BLoC will be respected for logic if needed.
- [x] **Navigation**: Strictly utilizes `go_router` per constitution.
- [x] **Architecture**: Routing is implemented cleanly in Presentation/Core.

## Project Structure

### Documentation (this feature)

```text
specs/001-bottom-navigation/
├── plan.md              # This file
├── research.md          # Phase 0 output
├── data-model.md        # Phase 1 output
└── tasks.md             # Phase 2 output (Pending speckit-tasks)
```

### Source Code (repository root)

```text
lib/
├── core/
│   └── router/
│       ├── app_router.dart           # go_router configuration
│       └── app_routes.dart           # Route paths definitions
├── presentation/
│   ├── main_shell/
│   │   ├── screens/
│   │   │   └── main_shell_screen.dart # Stateful navigation shell with BottomNavigationBar
│   │   └── widgets/
│   └── features/
│       ├── dashboard/
│       │   └── screens/dashboard_screen.dart
│       ├── favourite/
│       │   └── screens/favourite_screen.dart
│       ├── notification/
│       │   └── screens/notification_screen.dart
│       └── profile/
│           └── screens/profile_screen.dart
```

**Structure Decision**: Unified lib structure focusing on feature-driven Clean Architecture within `presentation`.

## Complexity Tracking

No violations found. Clean standard implementation with `StatefulShellRoute`.
