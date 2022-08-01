package com.hotel.booking.utils.pagination;

import com.hotel.booking.constants.PageItemType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PageItem {
    private PageItemType pageItemType;

    private int index;

    private boolean active;
}
