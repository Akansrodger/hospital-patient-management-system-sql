select * from patients;

SELECT V.VisitDate, P.FullName AS Patient, D.FullName AS Doctor, V.Diagnosis
FROM Visit V
JOIN Patients P ON V.PatientID = P.PatientID
JOIN Doctors D ON V.DoctorID = D.DoctorID;


select * from visit

SELECT FullName FROM Patients WHERE RiskLevel = 'High';