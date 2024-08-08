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



