package com.hotel.booking.utils;

import com.hotel.booking.dto.MailParamDto;

public class MailParamDtoUtil {
    public static MailParamDto mailParamDto(String name, String email, String url, String token) {
        return MailParamDto.builder()
                .mailTo(new String[]{email})
                .subject("[ATOLI RESORT]Xác nhận đặt phòng " + name)
                .content("<h3>Xin chào Quý khách, </h3>" +
                        "<p>Chào mừng bạn đến với ATOLI RESORT. Cảm ơn Qúy khách đã sử dụng dịch vụ của chúng tôi.</p>" +
                        "<p> Vui lòng vào đường dẫn dưới đây để xác nhận đặt phòng </p>" +
                        "<a href=\"" + url + "/accept-booking?accept-token=" + token + "\"" + ">" + url + "/accept-booking?accept-token=" + token + "</a> <br>" +
                        "<p>Sau khi xác nhận địa chỉ email thành công. Quý khách có thể đăng nhập vào website My Store và bắt" +
                        " đầu đăng ký sử dụng các dịch vụ của chúng tôi</p>" +
                        "<p>(Lưu ý email này chỉ có tác dụng " + "time" + " phút nếu quá hạn quý khách có thể yêu cầu xác nhận email mới)</p>")
                .build();
    }
}
