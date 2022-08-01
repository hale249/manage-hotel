package com.hotel.booking.repositories;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.hotel.booking.entities.Booking;

public interface BookingRepository extends JpaRepository<Booking, Long> {

	@Query("SELECT b FROM Booking b WHERE b.name LIKE %?1%")
	List<Booking> getBooking1(String searchText, Pageable pageable);

	@Query("SELECT b FROM Booking b WHERE b.name LIKE %?1%")
	Page<Booking> getBooking(String searchText, Pageable pageable);

	@Query("SELECT b FROM Booking b WHERE b.email=?1")
	List<Booking> findBookingByEmail(String email);

	@Modifying
	@Transactional
	@Query("update Booking u " + "set u.name =?1,u.email = ?2, u.dateCheckin=?3, u.dateCheckout=?4,"
			+ " u.numberOfPerson=?5, u.numberOfRoom=?6, u.roomType=?7," + " u.roomId=?8, u.deleted=?9, "
			+ "u.price = ?10, u.payment = ?11, u.status = ?12 where u.id = ?13")
	int update(String name, String email, Date dateCheckin, Date dateCheckout, int numberOfPerson, int numberOfRoom,
			String roomType, Long roomId, boolean deleted, double price, String payment, String status, Long id);

	@Modifying
	@Query("update Booking b set b.deletedFlg=true where b.id = ?1")
	void deleteById(Long id);

	@Query(value = "SELECT * FROM booking b WHERE b.customer_id=:customerId and b.deleted =:deleted", nativeQuery = true)
	List<Booking> findBookingByCustomerId(Long customerId, String deleted);

	@Query(value = "SELECT count(b.id) from booking b", nativeQuery = true)
	int countBooking();

	@Query(value = "SELECT count(b.id) from booking b where b.deleted_flg = '0'", nativeQuery = true)
	int countSuccBooking();

	@Query(value = "SELECT count(b.id) from booking b where b.deleted_flg = '1'", nativeQuery = true)
	int countFailBooking();

	@Query(value = "SELECT * from booking b where b.deleted_flg = '0'", nativeQuery = true)
	List<Booking> bookingsSuccess();

	@Query(value = "SELECT count(b.id) from booking b where b.room_type =?1", nativeQuery = true)
	int countBookingRoomType(String roomType);

	@Query(value = "SELECT * from booking b where b.room_type =?1", nativeQuery = true)
	List<Booking> bookingsSuccess(String roomType);

}
