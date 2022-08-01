package com.hotel.booking.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

import org.hibernate.annotations.Where;

import com.hotel.booking.constants.DBConstants;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Where(clause = "deleted=0")
@Table(name = DBConstants.Documents.COMMENTROOMS)
public class CommentRoom extends BaseEntity {

	@Column(name = "name", length = 128)
	@NotEmpty(message = "Vui lòng nhập tên")
	private String name;

	@Column(name = "replyId")
	private Long replyId;

	@NotEmpty(message = "Email không được để trống")
	@Email(message = "Kiểm tra đúng định dạng email")
	@Column(length = 128)
	private String email;

	@NotEmpty(message = "Nội dung không được để trống")
	@Column(unique = true, length = 128)
	private String message;

	@Column(name = "deleted", columnDefinition = "boolean default false")
	private boolean deleted = Boolean.FALSE;
}
