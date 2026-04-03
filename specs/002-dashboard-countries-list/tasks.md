# Execution Tasks: Dashboard Countries List

**Feature Branch**: `002-dashboard-countries-list`  
**Inputs**: `plan.md`, `spec.md`, `data-model.md`, `research.md`

## Implementation Strategy

This feature will be built hierarchically. We will initialize the networking and domain models first, execute Code Generation, then wire the Repository to the Cubit. Finally, we will build the UI components independently and assemble them onto the Dashboard screen to fulfill User Story 1.

## Phase 1: Setup

Shared initialization and dependencies.

- [x] T001 Add `freezed_annotation`, `json_annotation`, `cached_network_image`, `dio` to dependencies in `pubspec.yaml`
- [x] T002 Add `build_runner`, `freezed`, `json_serializable` to dev_dependencies in `pubspec.yaml`

## Phase 2: Foundational

Networking and base configuration prerequisites.

- [x] T003 [P] Create network singleton utility in `lib/core/network/dio_client.dart`

## Phase 3: User Story 1 - View Countries Grid

**Goal**: Fetch robust data from RestCountries and display a 2-column grid representing countries with circular pristine flags.  
**Independent Test Criteria**: Launch the app on the Dashboard tab. A shimmer or loading indicator should appear briefly, followed by a grid of visually perfect circular flags (no cropped core icons) alongside their names and secondary text.

- [x] T004 [P] [US1] Create Domain Entity `lib/domain/entities/country.dart` using `@freezed`
- [x] T005 [P] [US1] Create Data Transfer Object `lib/data/models/country_dto.dart` using `@freezed` and `@JsonSerializable()`
- [x] T006 [P] [US1] Define Interface Contract `lib/domain/repositories/country_repository_interface.dart`
- [x] T007 [P] [US1] Define UI States `lib/presentation/features/dashboard/bloc/dashboard_state.dart` using `@freezed`
- [x] T008 [US1] Execute Code Generation `dart run build_runner build --delete-conflicting-outputs` to process all `@freezed` definitions (no specific file path, runs in root)
- [x] T009 [US1] Implement Repository Logic `lib/data/repositories/country_repository_impl.dart` fetching data from API using `dio_client`
- [x] T010 [US1] Implement State Management `lib/presentation/features/dashboard/bloc/dashboard_cubit.dart` calling repository and emitting loaded states
- [x] T011 [P] [US1] Build Widget `lib/presentation/features/dashboard/widgets/circular_flag_avatar.dart` rendering `CachedNetworkImage` nested cleanly in `BoxShape.circle` and `BoxFit.contain`
- [x] T012 [US1] Build Widget `lib/presentation/features/dashboard/widgets/country_grid_item.dart` enclosing the circular avatar and text info layouts
- [x] T013 [US1] Overhaul Screen `lib/presentation/features/dashboard/screens/dashboard_screen.dart` wrapping a `GridView.builder` via `BlocBuilder<DashboardCubit>`

## Phase 4: Polish & Cross-Cutting Concerns

- [x] T014 Run `flutter format .` and `flutter analyze` ensuring code quality across all written paths.

## Dependencies

- **US1 (View Countries Grid)** necessitates Setup and Foundational.
- **T008 (build_runner)** necessitates completion of T004, T005, and T007.
- **T009 (RepoImpl)** necessitates T006 interface and T003 client.

## Parallel Execution Opportunities

- Model configurations (T004, T005, T006, T007) and standard Widgets (T011) can be assembled entirely in parallel because they serve as detached leafs to the feature hierarchy.
