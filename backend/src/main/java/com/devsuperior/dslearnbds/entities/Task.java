package com.devsuperior.dslearnbds.entities;

import java.time.Instant;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tb_task")
public class Task extends Lesson {
	private static final long serialVersionUID = 1L;
	
	private String description;
	private Integer aquestionCount;
	private Integer approvalCount;
	private Double weight;
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant doueDate;

	public Task() {
		
	}

	public Task(Long id, String title, String position, Section section, String description, Integer aquestionCount,
			Integer approvalCount, Double weight, Instant doueDate) {
		super(id, title, position, section);
		this.description = description;
		this.aquestionCount = aquestionCount;
		this.approvalCount = approvalCount;
		this.weight = weight;
		this.doueDate = doueDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getAquestionCount() {
		return aquestionCount;
	}

	public void setAquestionCount(Integer aquestionCount) {
		this.aquestionCount = aquestionCount;
	}

	public Integer getApprovalCount() {
		return approvalCount;
	}

	public void setApprovalCount(Integer approvalCount) {
		this.approvalCount = approvalCount;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Instant getDoueDate() {
		return doueDate;
	}

	public void setDoueDate(Instant doueDate) {
		this.doueDate = doueDate;
	}
	
}
