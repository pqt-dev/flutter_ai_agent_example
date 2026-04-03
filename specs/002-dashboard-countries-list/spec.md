# Feature Specification: Dashboard Countries List

**Feature Branch**: `002-dashboard-countries-list`  
**Created**: 2026-04-03  
**Status**: Draft  
**Input**: User description: "Triển khai chức năng hiển thị danh sách countries ở màn hình Dashboard. Sử dụng bất kì API nào để fetch danh sách countries. Hiển thị theo dạng GridView, mỗi row 2 item. Mỗi item có thông tin flag, country name, một vài thông tin cơ bản về quốc gia đó. Hình ảnh flag phải được hiển thị theo dạng circle nhưng đảm bảo tính signature của Quốc gia đó, nhìn vào là biết đó là đất nước nào."

## User Scenarios & Testing *(mandatory)*

### User Story 1 - View Countries Grid (Priority: P1)

Là một người dùng, khi tôi truy cập vào màn hình Dashboard của ứng dụng, tôi muốn thấy ngay một danh sách các quốc gia trên thế giới được trình bày trực quan dưới dạng lưới (Grid), để tôi có thể khám phá thông tin cơ bản của nhiều quốc gia một cách dễ dàng và đẹp mắt.

**Why this priority**: Đây là tính năng cốt lõi đi thẳng vào use-case chính của màn hình Dashboard, cung cấp trải nghiệm content ngay khi bật ứng dụng.

**Independent Test**: Mở màn hình Dashboard. Ứng dụng tự động tải dữ liệu (có loading indicator) và sau đó hiển thị danh sách các thẻ quốc gia (Grid 2 cột), mỗi thẻ có đủ hình ảnh quốc kỳ, tên, và thông tin tóm tắt.

**Acceptance Scenarios**:

1. **Given** người dùng mở màn hình Dashboard, **When** dữ liệu từ máy chủ đang được tải về, **Then** giao diện hiển thị trạng thái đang xử lý (loading/shimmer).
2. **Given** quá trình tải dữ liệu đã hoàn tất thành công, **When** người dùng nhìn vào màn hình, **Then** lưới (GridView) hiển thị chính xác 2 cột. Mỗi ô tương ứng hiển thị một quốc gia với các thành phần: Hình Quốc kỳ ở dạng bo tròn (circle), Tên quốc gia hiển thị to rõ, và ít nhất một dòng thông tin tóm tắt (VD: Thủ đô hoặc Dân số).
3. **Given** thiết bị mất mạng hoặc API gặp sự cố, **When** người dùng thao tác vào Dashboard, **Then** màn hình hiển thị thông báo lỗi thân thiện kèm theo một nút "Thử lại".
4. **Given** 1 quốc kỳ có tỷ lệ đặc biệt (như Nepal) hoặc có chi tiết cốt lõi nằm ở viền, **When** hiển thị ở dạng bo tròn, **Then** hình ảnh cờ không bị xén (crop) mất dấu hiệu nhận diện đặc trưng, nhìn vào vẫn nhận ra được nước nào.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: Hệ thống MUST tự kích hoạt quá trình gọi API để lấy danh sách thông tin và cờ của các quốc gia ngay khi màn hình Dashboard được render.
- **FR-002**: Hệ thống MUST hiển thị danh sách quốc gia đó theo dạng lưới (Grid) với layout cố định 2 phần tử trên một hàng dọc (2 item per row) dể tối ưu không gian hiển thị.
- **FR-003**: Mỗi ô quốc gia (item card) MUST hiển thị đủ chùm thông tin: Tên quốc gia, Quốc kỳ (Flag), và tối thiểu 1 thông tin mô tả hiển thị phía dưới (như Capital hoặc Region).
- **FR-004**: Hình ảnh Quốc kỳ MUST được render trong khung giới hạn hình tròn (circle shape). Cách lồng ảnh không được dùng cắt xén mù (blind center-crop) nếu điều đó làm hỏng tính nhận diện của lá cờ, thay vào đó phải giữ được signature của hình (có thể cân nhắc dùng fit contain với nền viền).
- **FR-005**: Hệ thống MUST xử lý UI thay thế đối với 2 trạng thái ngoại lệ: Đang tải (Loading) và Thất bại (Error).

### Key Entities

- **Country**: Thực thể đại diện cho thông tin một quốc gia.  
  Thuộc tính: Tên hiển thị (Name), URL/Link hình ảnh Quốc kỳ, Thông tin phụ (Thủ đô hoặc Dân số, v.v.).

## Success Criteria *(mandatory)*

### Measurable Outcomes

- **SC-001**: Thông tin hiển thị không bị lỗi layout (overflow pixels) khi các quốc gia có tên cực kỳ dài đổ nội dung vào ô Grid 2 cột trên điện thoại nhỏ (`iPhone SE`).
- **SC-002**: Flag hiển thị dạng vòng tròn nhưng khả năng nhận diện hình ảnh của lá cờ không bị thuyên giảm so với tỷ lệ hình gốc.
- **SC-003**: Thời gian tải và vẽ lên màn hình không được có độ trễ UI (frame drop) dẫn tới giật lag khi cuộn nhanh (Fast Scrolling) một danh sách 200+ quốc gia.

## Assumptions

- API REST lấy danh sách quốc gia là một Open/Public API không cần token xác thực phức tạp (Ví dụ: `https://restcountries.com/`).
- Thông tin phụ của quốc gia (Thủ đô, Khu vực) đủ ngắn gọn để nằm trên 1-2 dòng text mà không làm vỡ layout của Card giao diện.
