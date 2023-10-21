use company_constraints;

-- Discretização
select Fname, Salary,
	case
		when Salary > 39000 then 'Executivo'
        when Salary > 29000 then 'Senior'
        when Salary > 19000 then 'Pleno'
        else 'Junior'
	end as Employee_level
    from employee e
    order by Employee_level;