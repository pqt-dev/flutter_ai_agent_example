# Implementation Plan: Dashboard Countries List

**Branch**: `002-dashboard-countries-list` | **Date**: 2026-04-03 | **Spec**: [spec.md](../spec.md)
**Input**: Feature specification from `/specs/002-dashboard-countries-list/spec.md`

## Summary
Triển khai một Data Grid hiệu năng cao trên tab Dashboard để hiển thị danh sách các quốc gia, dữ liệu được tải từ `RestCountries` public API. Tuân thủ Hiến pháp Clean Architecture, chúng ta sẽ thiết kế một luồng khép kín: Domain Models sử dụng `freezed`, Data Layer dùng `dio` làm client, và UI được vẽ và quản lý trạng thái tải bằng `flutter_bloc`.

## Technical Context
**Language/Version**: Dart (Latest Stable)  
**Primary Dependencies**: `flutter_bloc` (Quản lý trạng thái), `dio` (Kết nối mạng), `freezed` & `json_annotation` (Khởi tạo models dạng Immutable), `cached_network_image` (Render cờ mượt mà).
**Project Type**: Mobile Application  
**Performance Goals**: Đạt 60 fps khi cuộn nhanh qua 250 lá cờ, load hình ảnh không đơ giao diện.
**Constraints**: Giao diện Grid đôi (Sliver/GridView) tự render response tự động.

## Constitution Check
*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

- [x] **Framework**: Latest Flutter standard.
- [x] **State Management**: Sử dụng BLoC/Cubit khai báo các state bất biến cho Dashboard: Initial, Loading, Loaded(List<Country>), Error(String).
- [x] **Architecture**: Phân rã triệt để UI - Domain - Data (Clean Architecture).
- [x] **Models/States**: Áp dụng triệt để thư viện Code-gen `freezed` cho Entity và States.
- [x] **Network API**: Khai thác `dio` cho lớp gọi Data.

## Project Structure

### Documentation
```text
specs/002-dashboard-countries-list/
├── plan.md              # File kế hoạch (.specify/plan-template.md)
├── research.md          # Kết quả quyết định Architecture & API
└── data-model.md        # Thiết kế Models JSON
```

### Source Code
```text
lib/
├── core/
│   └── network/
│       └── dio_client.dart                 # Base singleton dio client (nếu chưa có)
├── domain/
│   ├── entities/
│   │   └── country.dart                    # Entity Domain bằng freezed
│   └── repositories/
│       └── country_repository_interface.dart # Interface hợp đồng abstraction
├── data/
│   ├── models/
│   │   └── country_dto.dart                # DTO parse lớp map JSON
│   └── repositories/
│       └── country_repository_impl.dart    # Implement qua dio
└── presentation/
    └── features/
        └── dashboard/
            ├── bloc/
            │   ├── dashboard_cubit.dart    # Logic fetching list country
            │   └── dashboard_state.dart    # Các freezed union states
            ├── screens/
            │   └── dashboard_screen.dart   # File màn hình cũ nay nâng cấp thêm BlocProvider lấy dữ liệu
            └── widgets/
                ├── country_grid_item.dart  # Thẻ item của từng quốc gia
                └── circular_flag_avatar.dart # Layout tuỳ chỉnh bo tròn cờ
```

**Structure Decision**: Áp dụng chuẩn cắt lớp Clean Architecture đứng dọc (Vertical Slicing) phân tách các logic chuyên sâu nhưng cùng phục vụ một Cấu phần màn hình. Đảm bảo cấu trúc Data/Domain tách biệt chuẩn mực khỏi View.

## Complexity Tracking
- Không vi phạm hiến pháp (Constitution).
- Rủi ro duy nhất là việc render quá nhiều ảnh có thể gây tốn Ram. Chúng ta đã fix bằng việc chỉ định dùng `cached_network_image` vào quá trình Code.
