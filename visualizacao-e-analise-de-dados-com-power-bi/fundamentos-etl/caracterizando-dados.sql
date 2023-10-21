use company_constraints;
show tables;

-- numeros de employees por departamento
select * from employee e; -- Dno
select * from departament d; -- Dnumber

select Dno, Ssn from employee e inner join departament d on Dno = Dnumber;

-- Categorizar os departamentos por números de colaboradores
SELECT 
    Dno, COUNT(*) AS Total
FROM
    employee e
        INNER JOIN
    departament d ON Dno = Dnumber
GROUP BY 1
ORDER BY Total ASC;

-- Projetos por departamento
select Pname, Dnum from project p inner join departament d on Dnum = Dnumber;
SELECT 
    Dnum, COUNT(*) AS projects
FROM
    project p
        INNER JOIN
    departament d ON Dnum = Dnumber
GROUP BY 1;