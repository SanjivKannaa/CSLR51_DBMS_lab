1.
for $x in doc("/home/nitt/Desktop/dbms134/q2.xml")/StudentDetails/Students
where $x/Marks>75
return $x 
 
        1
        Soma
        SE
        CSE
        1
        100
     
        2
        Sanjiv
        Devops
        CSE
        1
        99
     
        3
        Sri
        Networks
        ECE
        2
        98
        
2.
for $x in doc("/home/nitt/Desktop/dbms134/q2.xml")/StudentDetails/Students
return avg($x/Marks)

3.
