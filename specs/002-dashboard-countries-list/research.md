# Research: Dashboard Countries List

## Decision 1: Countries Data Source API
- **Decision**: Sử dụng RestCountries API (`https://restcountries.com/v3.1/all`).
- **Rationale**: Đây là API miễn phí, không yêu cầu key (Authentication), cực kỳ ổn định và trả về chính xác cấu trúc dữ liệu ta cần: name, flags (png/svg), capital, và population.
- **Alternatives considered**: 
  - RapidAPI (các API bên thứ 3) - bị loại vì giới hạn call/tháng và đòi key rườm rà không cần thiết.

## Decision 2: Chiến lược render ảnh Flag (Quốc kỳ)
- **Decision**: Sử dụng `Container` hình tròn với màu nền trong/trắng và áp dụng cơ chế `BoxFit.contain` cho ảnh cờ bên trong viền bounding đó.
- **Rationale**: Requirement FR-004 cấm dùng lệnh crop bừa ảnh làm hỏng nhận diện của lá cờ (đặc biệt các cờ tỉ lệ hiếm như cờ của Nepal hình tam giác ghép). Thay vì dùng `ClipOval` kết hợp `BoxFit.cover` (vốn sẽ cắt xém mất viền đồ hoạ), sử dụng `contain` sẽ resize toàn cụm hình về mức tối đa vừa khít bên trong khối cầu, 100% giữ nguyên signature thiết kế gốc của đất nước đó.
- **Alternatives considered**: 
  - `ClipOval` + `cover`: Bị loại. Lá cờ của Hoa Kỳ hoặc Malaysia sẽ bị mất sao/sọc nghiêm trọng.

## Decision 3: Network Data Fetching & Caching Hình ảnh
- **Decision**: Sử dụng `dio` (bắt buộc theo Constitution) để fetch JSON và package `cached_network_image` cho quá trình load cờ ở Presentation.
- **Rationale**: GridView tải và vẽ hàng trăm tấm cờ liên tiếp, nếu dùng render ảnh thường sẽ rớt FPS thảm hại. Thư viện `cached_network_image` sử dụng SQLite để cached file disk, tránh gọi lại mạng khi người dùng cuộn lên xuống.
