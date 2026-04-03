# Data Model

## Domain Entities

### Country (Freezed Model)
Đại diện cho thông tin một quốc gia trong hệ thống.

**Fields**:
- `String id`: Mã nhận diện duy nhất (thường sử dụng mã ISO cca2).
- `String name`: Tên hiển thị (Tên chung phổ thông).
- `String flagUrl`: Đường link ảnh PNG chứa quốc kỳ.
- `String summary`: Dòng text phụ tóm tắt (ví dụ có thể ghép từ Capital và Population, tuỳ theo xử lý ở Repository).
- `int population`: Dân số ước tính.

**Relationships**:
Không có relationship phức tạp với các cụm Entity khác ở phase hiện tại.

## API Contracts / DTO

### REST Countries API V3.1
Endpoint: `GET https://restcountries.com/v3.1/all?fields=name,flags,capital,population,cca2`
Sẽ được map vào đối tượng Data Transfer Object (DTO) trước khi trả về Frontend.
- Custom logic: Chuyển đổi list JSON lồng xéo (`name.common`) thành các chuỗi phẳng thông thường tương ứng với Domain Entity.
