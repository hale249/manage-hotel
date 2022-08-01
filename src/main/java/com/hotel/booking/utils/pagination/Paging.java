package com.hotel.booking.utils.pagination;

import com.hotel.booking.constants.PageItemType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Paging {
    private static final int PAGINATION_STEP = 3;

    private boolean nextEnabled;
    private boolean prevEnabled;
    private int pageSize;
    private int current;

    private List<PageItem> items = new ArrayList<>();

    public void addPageItems(int from, int to, int pageNumber) {
        for (int i = from; i < to; i++) {
            items.add(PageItem.builder().active(pageNumber != i).index(i).pageItemType(PageItemType.PAGE).build());
        }
    }

    public void last(int pageSize) {
        items.add(PageItem.builder().active(false).pageItemType(PageItemType.DOTS).build());

        items.add(PageItem.builder().active(true).index(pageSize).pageItemType(PageItemType.PAGE).build());
    }

    public void first(int pageNumber) {
        items.add(PageItem.builder().active(pageNumber != 1).index(1).pageItemType(PageItemType.PAGE).build());

        items.add(PageItem.builder().active(false).pageItemType(PageItemType.DOTS).build());
    }

    public static Paging of(int totalPages, int current, int pageSize) {
        Paging paging = new Paging();
        paging.setPageSize(pageSize);
        paging.setNextEnabled(current != totalPages);
        paging.setPrevEnabled(current != 1);
        paging.setCurrent(current);

        if (totalPages < PAGINATION_STEP * 2 + 6) {
            paging.addPageItems(1, totalPages + 1, current);

        } else if (current < PAGINATION_STEP * 2 + 1) {
            paging.addPageItems(1, PAGINATION_STEP * 2 + 4, current);
            paging.last(totalPages);

        } else if (current > totalPages - PAGINATION_STEP * 2) {
            paging.first(current);
            paging.addPageItems(totalPages - PAGINATION_STEP * 2 - 2, totalPages + 1, current);

        } else {
            paging.first(current);
            paging.addPageItems(current - PAGINATION_STEP, current + PAGINATION_STEP + 1, current);
            paging.last(totalPages);
        }

        return paging;
    }
}
