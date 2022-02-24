# Exercícios 1

## Criando Instruções SELECT SQL Básicas

### Consultando os dados da tabela `EMPLOYEES`.

1. Mostre o `last_name`, `job_id`, `hire_date`, and `employee_id` para cada empregado, 
com o número do empregado aparecendo por primeiro. Definir um apelido (alias) `STARTDATE` para a coluna `hire_date`.

2. Listar todos os `job_id` __únicos__ da tabela `EMPLOYEES`.

3. Consulte os dados renomeando as colunas:
  `employee_id` para `Emp #`,
	`last_name`   para `Employee`,
  `job_id`      para `Job`,
  `hire_date`   para `Hire Date`.
  
4. Liste o `last_name` __concatenado__ com o `job_id` (separado por uma vírgula e um espaço) e
nomeie a coluna para `Employee and Title`.