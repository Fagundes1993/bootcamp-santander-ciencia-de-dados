use company_constraints;

-- Padronização
select Fname,
	case
		when Sex = 'm' then 'Masculino'
        when Sex = 'f' then 'Feminino'
        else Sex
        end as Gender
	from employee e;