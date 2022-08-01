package com.hotel.booking.repositories;

import com.hotel.booking.entities.Blog;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface BlogRepository extends JpaRepository<Blog, Long> {
    @Query("SELECT b FROM Blog b WHERE b.title LIKE %?1%")
    Page<Blog> getBlogs(String searchText, Pageable pageable);

    @Modifying
    @Query("update Blog b set b.deleted=true where b.id = ?1")
    void deleteById(Long id);

    Blog findBlogById(Long id);
}
