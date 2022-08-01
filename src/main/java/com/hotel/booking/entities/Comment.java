package com.hotel.booking.entities;

import com.hotel.booking.constants.DBConstants;
import lombok.*;
import org.hibernate.annotations.Where;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.time.LocalDateTime;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Where(clause="deleted=0")
@Table(name = DBConstants.Documents.COMMENTS)
public class Comment extends BaseEntity {

    @NotEmpty(message = "{name.null}")
    @Column(name = "name", length = 128)
    private String name;

    @Column(name = "blog_id", nullable = false)
    private Long blog_id;

    @NotEmpty(message = "{comment.email.null}")
    @Column(length = 128)
    @Email(message = "{comment.email.valid}")
    private String email;

    @Pattern(regexp = "^([\\+84|84|0]+(3|5|7|8|9|1[2|6|8|9]))+([0-9]{8})$", message = "{comment.phone}")
    @Column(name = "phone", columnDefinition = "varchar(12)")
    private String phone;

    @NotEmpty(message = "{comment.message.null}")
    @Column(unique = true, length = 128)
    private String message;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "blog_id", insertable = false, updatable = false)
    private Blog blog;

    @CreatedDate
    private LocalDateTime created;

    @Column(name = "deleted", columnDefinition = "boolean default false")
    private boolean deleted = Boolean.FALSE;
}
