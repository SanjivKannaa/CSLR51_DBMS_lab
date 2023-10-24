Q1(i)


1.Create a xquery to list the salary > 30000
doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q1.xml")/EmployeeDetails/Employee[Salary>30000]
 
        1
        Soma
        SDE
        8
        CSE
        1
        1000000
     
        2
        Sanjiv
        Devops
        7
        CSE
        1
        1500000
     
        3
        Sri
        Trader
        1
        DS
        2
        10000000
     
        4
        Mano
        Manager
        13
        Management
        3
        20000000
     
        5
        Nitin
        AppDev
        8
        Research
        1
        1000000
    

2.Get Employee numbers of employees whose last name starts with "S".
for $x in doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q1.xml")/EmployeeDetails/Employee[starts-with(EName,"S")]/EmpNo
return $x
 123


3.Get names of employees in the "Research" department.
for $x in doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q1.xml")/EmployeeDetails/Employee
where $x/Dept = "Research"
return $x 
 
        5
        Nitin
        AppDev
        8
        Research
        1
        1000000
    

4.Get employees who are managers work more than 8 hours
for $x in doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q1.xml")/EmployeeDetails/Employee
where $x/Job="Manager" and $x/WorkingHours>8
return $x
 


5.Display the salary in highest to lowest.
for $x in doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q1.xml")/EmployeeDetails/Employee
order by $x/Salary
return $x


        1
        Soma
        SDE
        8
        CSE
        1
        1000000
     
        5
        Nitin
        Manager
        8
        Research
        1
        1000000
     
        3
        Sri
        Trader
        1
        DS
        2
        10000000
     
        2
        Sanjiv
        Devops
        7
        CSE
        1
        1500000
     
        4
        Mano
        Manager
        13
        Management
        3
        20000000
    

6.Display the Employee name in Alphabetical order.
for $x in doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q1.xml")/EmployeeDetails/Employee/EName
order by $x
return $x

ManoNitinSanjivSomaSri





Q1(ii)

1. Create a xquery to list the Marks > 75
for $x in doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q2.xml")/StudentDetails/Students
where $x/Marks>75
return $x 
  
        1
        Soma
        SE
        CSE
        1
        100
        13
     
        2
        Sanjiv
        Devops
        CSE
        1
        99
        12
     
        3
        Sri
        Networks
        ECE
        2
        98
        43
     
        4
        Mano
        Analog
        ICE
        13
        20
        79
     
        5
        Nitin
        Electronics
        EEE
        1
        10
        99
    
    

2. Find the Avg Mark of a Student.
for $x in doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q2.xml")/StudentDetails/Students[STUID eq "1"]
return avg($x/Marks)
56.5

3. Find the Total Marks of a Student.
sum(doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q2.xml")/StudentDetails/Students[STUID eq "2"]/Marks)
111

4. Find the Min and Max Mark of a student in a subject.
min(doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q2.xml")/StudentDetails/Students[STUID eq "3"]/Marks),
max(doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q2.xml")/StudentDetails/Students[STUID eq "3"]/Marks)
43 98




Q2(i)

1. Create a xquery to list the price of journey < 5000
doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q3.xml")/FlightDetails/Flight[Price<5000]
 
        5
        Corona
        Nitin
        Trichy
        Hosur
        21.10.2023
        6:45
        4000
    


2. Create a xquery to find the departs Time of the particular flight on a 4.12.2020 from a particular city.
doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q3.xml")/FlightDetails/Flight[Date eq 21.10.2023 and From eq Trichy]/DepartTime
        5
        Corona
        Nitin
        Trichy
        Hosur
        21.10.2023
        6:45
        9:00
        4000

3. Create a xquery to find the Flight Names handled by a particular Pilot.
doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q3.xml")/FlightDetails/Flight[PilotName eq "Soma"]
        1
        Lufthansa
        Soma
        Chennai
        Trichy
        2020-12-04
        3:00
        6:00
        15000
    


4. Create a xquery to find out number of Flight journeys of a particular flight on 30.11.2020
count(doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q3.xml")/FlightDetails/Flight[Date eq "30.11.2020"])
0


5. Create a xquery to find Arrival Time of a particular flight on 25.11.2020 from a particular city.
doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q3.xml")/FlightDetails/Flight[Date eq 21.10.2023 and From eq Trichy]/ArrivesTime
        5
        Corona
        Nitin
        Trichy
        Hosur
        21.10.2023
        6:45
        9:00
        4000




Q2(ii)
1. Create a xquery to list the employees in Dept =’Human Resources’.
doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q4.xml")/EmployeeDetails/Employee[Dept eq "HumanResouces"]
        4
        Mano
        Manager
        4
        HumanResouces
        13
        20000000
    
2. Create a xquery to find the Employee who works in particular project and salary > 50000.
doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q4.xml")/EmployeeDetails/Employee[Project eq "3" and Salary>50000]
        3
        Sri
        Trader
        3
        DS
        2
        10000000


3. Create a xquery to find the Total salary of Employees in a particular department.
sum(doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q4.xml")/EmployeeDetails/Employee[Dept eq "CSE"]/Salary)
        33500000


4. Create a xquery to find the number of Employees working in a department.
count(doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q4.xml")/EmployeeDetails/Employee[Dept eq "CSE"])
        2

5. Create a xquery to find the highest salary of a manager in particular department.
max(doc("/home/magic_kite/Desktop/NITT/1_semester5/CSLR51_DBMS_lab/lab10/q4.xml")/EmployeeDetails/Employee[Dept eq "HumanResouces" and Job eq "Manager"]/Salary)
        20000000