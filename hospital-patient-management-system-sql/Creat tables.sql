Create table Doctors (
DoctorID INT PRIMARY KEY,
FullName VARCHAR(100),
Specialty VARCHAR(100)
);


create table patients (
PatientID INT PRIMARY KEY,
FullName VARCHAR(100),
Gender VARCHAR(10),
DateOfBirth DATE,
RiskLevel VARCHAR(10)
);


Create table Visit (
VisitID INT PRIMARY KEY,
PatientID INT,
DoctorID INT,
VisitDate DATE,
Diagnosis VARCHAR(100),
FOREIGN KEY (PatientID) REFERENCES patients(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);


