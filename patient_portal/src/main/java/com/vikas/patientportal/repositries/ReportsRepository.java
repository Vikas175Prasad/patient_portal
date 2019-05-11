package com.vikas.patientportal.repositries;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vikas.patientportal.models.Reports;

public interface ReportsRepository extends JpaRepository<Reports, Integer>{

	List<Reports> findByPatientIdAndReportType(Integer id,String reportType);
}
