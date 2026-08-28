CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
declare M int; set M=N-1;
  RETURN (
    
      select distinct salary from employee 
       order by salary Desc Limit M,1

  );
END