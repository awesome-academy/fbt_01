package app.model;

import java.util.List;

public class Booktour implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;

	private Tour tour;
	private User user;
	private String primeTour;
	private int adults;
	private int children;
	private String status;
	private String notel;
	private List<Bill> bills;
	public Booktour() {
	}

	public Booktour(Integer id, Tour tour, User user, String primeTour, int adults, int children,
			String status, String notel,List<Bill> bills) {
		this.id = id;
		this.tour = tour;
		this.user = user;
		this.primeTour = primeTour;
		this.adults = adults;
		this.children = children;
		this.status = status;
		this.notel = notel;
		this.bills = bills;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPrimeTour() {
		return primeTour;
	}

	public void setPrimeTour(String primeTour) {
		this.primeTour = primeTour;
	}

	public int getAdults() {
		return adults;
	}

	public void setAdults(int adults) {
		this.adults = adults;
	}

	public int getChildren() {
		return children;
	}

	public void setChildren(int children) {
		this.children = children;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getNotel() {
		return notel;
	}

	public void setNotel(String notel) {
		this.notel = notel;
	}

	public List<Bill> getBills() {
		return bills;
	}

	public void setBills(List<Bill> bills) {
		this.bills = bills;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
