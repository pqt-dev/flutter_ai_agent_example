# Execution Tasks: Bottom Navigation

**Feature Branch**: `001-bottom-navigation`  
**Inputs**: `plan.md`, `spec.md`, `data-model.md`, `research.md`

## Implementation Strategy

This feature will be implemented incrementally. The MVP (User Story 1 - App Navigation) focuses on initializing `go_router` with `StatefulShellRoute.indexedStack` and creating basic placeholder screens for the 4 core tabs. Once the MVP demonstrates working tab switching with the `BottomNavigationBar` intact, User Story 2 introduces nested functionality and scroll views to verify and prove State Preservation in deep tabs.

## Phase 1: Setup

Shared initialization and dependencies.

- [x] T001 Add or verify `go_router` and `flutter_bloc` dependencies in `pubspec.yaml`

## Phase 2: Foundational

Blocking prerequisites for the user stories (Core Router Setup).

- [x] T002 [P] Create route path constants in `lib/core/router/app_routes.dart`
- [x] T003 Initialize the base `GoRouter` instance in `lib/core/router/app_router.dart`

## Phase 3: User Story 1 - App Navigation

**Goal**: Create the main navigation shell and 4 structural tabs allowing lateral navigation.  
**Independent Test Criteria**: Launch app, verify 4 tabs are visible, and tapping them changes the body content successfully while preserving the bottom bar.

- [x] T004 [P] [US1] Create placeholder UI in `lib/presentation/features/dashboard/screens/dashboard_screen.dart`
- [x] T005 [P] [US1] Create placeholder UI in `lib/presentation/features/favourite/screens/favourite_screen.dart`
- [x] T006 [P] [US1] Create placeholder UI in `lib/presentation/features/notification/screens/notification_screen.dart`
- [x] T007 [P] [US1] Create placeholder UI in `lib/presentation/features/profile/screens/profile_screen.dart`
- [x] T008 [US1] Implement `lib/presentation/main_shell/screens/main_shell_screen.dart` utilizing `Scaffold` and `BottomNavigationBar` hooked to `navigationShell`
- [x] T009 [US1] Formulate `StatefulShellRoute.indexedStack` wrapping the 4 tab branches in `lib/core/router/app_router.dart`
- [x] T010 [US1] Mount the router configuration utilizing `MaterialApp.router` inside `lib/main.dart`

## Phase 4: User Story 2 - Nested Navigation & State Preservation

**Goal**: Introduce deep linking (nested routes) within a specific tab and verify that the app retains sub-page state and scroll offsets when swapping tabs.  
**Independent Test Criteria**: Scroll down dashboard, change tab, return to dashboard -> scroll retained. Push edit profile sub-screen, change tab, return -> edit profile screen retained.

- [x] T011 [P] [US2] Create secondary screen `lib/presentation/features/profile/screens/edit_profile_screen.dart`
- [x] T012 [P] [US2] Amend `lib/presentation/features/dashboard/screens/dashboard_screen.dart` to employ a `ListView.builder` for scroll state validation
- [x] T013 [US2] Append a button in `lib/presentation/features/profile/screens/profile_screen.dart` triggering a sub-route push (`context.go`) to Edit Profile
- [x] T014 [US2] Inject the nested sub-route configuration for Edit Profile under the Profile branch in `lib/core/router/app_router.dart`

## Phase 5: Polish & Cross-Cutting Concerns

- [x] T015 Run `flutter format .` and `flutter analyze` to rectify any stylistic warnings across all authored files.

## Dependencies

- **US1 (App Navigation)** depends firmly on Setup and Foundational tasks.
- **US2 (Nested Navigation & Preservation)** depends entirely on the functional shell derived from US1.

## Parallel Execution Opportunities

- T004, T005, T006, and T007 can be assembled simultaneously as they have no reciprocal dependencies.
- T011 and T012 can be formulated concurrently before wiring them back into the main router tree.
