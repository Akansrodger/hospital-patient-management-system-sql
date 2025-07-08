To check all in the visit table:

select * from patients;
---
Get All Visits with Patient & Doctor Names

SELECT V.VisitDate, P.FullName AS Patient, D.FullName AS Doctor, V.Diagnosis
FROM Visit V
JOIN Patients P ON V.PatientID = P.PatientID
JOIN Doctors D ON V.DoctorID = D.DoctorID;

---
To check all in the visit table:
select * from visit 
---
To access the pateints with high risklevels:

SELECT FullName FROM Patients WHERE RiskLevel = 'High';

---

To check Number of Pateints per Visit:

SELECT p.FullName, Count(v.VisitID) as Number_of_visit from patients p
join Visit v on p.PatientID= v.PatientID
Group by p.FullName

---
Count Number of Patients by risk level

SELECT  RiskLevel, COUNT(PatientID) AS Number_of_Patients
FROM patients
GROUP BY RiskLevel;

