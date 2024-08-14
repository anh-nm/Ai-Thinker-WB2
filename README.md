# Công tắc wifi điều khiển qua Internet

## Yêu cầu

1. Hỗ trợ tính năng cấu hình wifi. Người dùng sẽ truyền ssid, password của wifi cho thiết bị kết nối tới.
    - Về phần cấu hình. Thiết bị sẽ được đưa về trạng thái cấu hình bằng cách giữ nút nhấn trong 5s rồi nhả ra.
    - Khi đó LED nháy liên tục với chu kỳ 200ms.
    - Khi truyền dữ liệu cho chip, kết nối với wifi mà chip phát ra và gửi dữ liệu.
    - Sửng dụng socket tcp/http...

2. Trong khi chưa được cấu hình, thiết bị vẫn phải bật tắt bằng nút nhấn phần cứng bình thường.

3. Sau khi cấu hình xong, thiết bị connect wifi nhận được, kết nối mqtt, nhận lệnh điều khiển từ mqtt để bật/tắt các rơ le trên phần cứng.

4. Trong quá trình hoạt động, nếu mất kết nối wifi phải tự động kết nối lại được khi wifi có trở lại.


### Máy tính có thể gửi nhiều lệnh trong 1 thời gian ngắn (10 lệnh) liền 1 lúc.

# Thực hiện
Dùng BUTTON 3 điều khiển LED 3, Khi kết nối thành công mqtt điều khiển LED 3 qua mqtt. Khi nhấn giữ BUTTON 3, vào chế độ config wifi LED 3 blink với tần số 200ms cho đến khi hoàn thành config.

## Cụ thể

--Start
    |_ Wifi task
    |   |_ Wifi init done
    |       |_ Read flash
    |           |_ flash != NULL
    |               |_ Connect wifi
    |               |_ Start mqtt
    |
    |_ Button task
    |   |_ ON, OFF LED
    |   |_ IS_CONFIG
    |       |_ (Blink LED, Stop mqtt, stop wifi) Start AP
    |           |_ Receive ssid, password
    |               |_ Write flash
    |               |_ stop AP
    |               |_ connect wifi
    |               |_ start mqtt
    |_ END
## Các trạng thái chính của hệ thống

Wifi
1. Wifi disconnect

2. Wifi connecting

3. Wifi connected

4. Wifi reconnect

Button

1. NO_CLICK

2. CLICK

3. CONFIG

4. HOLD BUTTON

5. HOLD BUTTON LONG

Led
1. LED ON

2. LED OFF

3. BLINK

MQTT
1. 

2. 

3. 

## HTTP request message

- Gồm 3 thành phần chính: Request line, Header và Body
- Dữ liệu được chia thành các dòng, định dạng kết thúc dòng là <CR><LF> (tương đương với 0x0A, 0x0D), dòng cuối được báo hiệu bằng hai lần kết thúc.

1. Request line: Là dòng đầu tiên của gói bao gồm ba trường:
    - Phương thức (method): GET, POST, HEAD, PUT và DELETE.
    - Đường dẫn (path): định danh nguồn tài nguyên mà client yêu cầu, phải có ít nhất dấu "/".
    - HTTP version: phiên bản http mà client đang sử dụng (HTTP/1.0 hoặc HTTP1.1).

2. Header: Không bắt buộc, viết ở định dạng "Name: Value"
    - Accept: loại nội dung có thể nhận được từ thông điệp response. Ví dụ: text/plain, text/html.
    - Accept-Encoding: các kiểu nén được chấp nhận. Ví dụ: gzip, deflate, xz, exi…
    - Connection: tùy chọn điều khiển cho kết nối hiện thời. Ví dụ: Keep-Alive, Close…
    - Cookie: thông tin HTTP Cookie từ server.

3. Body: dữ liệu gửi từ client đến server trong gói tin HTTP request



