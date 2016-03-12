package com.tf.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tf_whitehall_transaction")
public class WhiteHallTransaction implements  Serializable {	


	private static final long serialVersionUID = -5026508393829079581L;

	@Id
    @Column(name="id")
    @GeneratedValue
	private Long id;	
	
	@Column(name="amount")
	private BigDecimal 	amount;
	
	@Column(name="transcation_type") 
	private String transcationType;
	
	@Column(name="transcation_date") 
	private Date transcationDate;
	
	@Column(name="trade_id")
	private Long tradeID;	
	
	@Column(name="reference") 
	private String reference;
	
	@Column(name="company_id") 
	private Long companyID;
	
	@Column(name="company_type") 
	private String companyType;
	
	public WhiteHallTransaction() {
		
	}	
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getTranscationType() {
		return transcationType;
	}

	public void setTranscationType(String transcationType) {
		this.transcationType = transcationType;
	}

	public Date getTranscationDate() {
		return transcationDate;
	}

	public void setTranscationDate(Date transcationDate) {
		this.transcationDate = transcationDate;
	}

	public Long getTradeID() {
		return tradeID;
	}

	public void setTradeID(Long tradeID) {
		this.tradeID = tradeID;
	}

	public String getReference() {
		return reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public Long getCompanyID() {
		return companyID;
	}


	public void setCompanyID(Long companyID) {
		this.companyID = companyID;
	}


	public String getCompanyType() {
		return companyType;
	}


	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}


	@Override
	public String toString() {
		return "WhiteHallTransaction [id=" + id + ", amount=" + amount
				+ ", transcationType=" + transcationType + ", transcationDate="
				+ transcationDate + ", tradeID=" + tradeID + ", reference="
				+ reference + ", companyName=" + companyID + ", companyType="
				+ companyType + "]";
	}


	
	
	

}
