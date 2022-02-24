# Exercício 2

## Restringindo e Classificando Dados

### Nesta lição, você fará mais consultas, incluindo comandos que utilizam a cláusula `WHERE` e a cláusula `ORDER BY`. Faça os comandos SQL reusáveis e genéricos incluíndo a substituição dos valores com o `&`(Oracle) e `$`(Postgres).

1. Liste o `last_name` e o `salary` dos empregados que ganham _mais_ de `$12,000`

2. Liste o `last_name` e o `department_id` do empregado com o `id 176`.

3. Liste o `last_name` e o `salary` para qualquer empregado no qual o _salário_ não esteja entre `$5,000` e `$12,000`.

4. Crie uma consulta para mostrar o `last_name`, `job_id`, e `hire_date` para os empregados com o `last_name` igual a `Matos` e `Taylor`. Ordene a consulta em ordem _crescente_ de `hire_date`.

5. Mostre o `last_name` e o `department_id` de todos os empregados do departamento 20 ou 50 em `ordem alfabética`.

6. Modifique o resultado do exercicio 3 para mostrar o `last_name` e o `salary` dos empregados que ganham entre $5,000 e $12,000 e que estão no departamento 20 ou 50. Nomeie as colunas com `Employee` e `Monthly  Salary`, respectivamente.

7. Mostre o `last_name`  e  `hire_date` para todos os empregados que foram contratados em 1994.

8. Crie uma consulta para mostrar o `last_name` e `job_id` de todos empregados que não tenham chefe. 

9. Crie uma consulta para mostrar o `last_name`, `salary` e `commission_pct` de todos os empregados que ganham comissão. `Ordene` os dados  por `salário` e `comissão` de forma `descrescente`.

10. Liste o `last_name` e `salary` dos empregados que ganham `mais` que um `valor especificado (passado como parâmetro)` pelo usuário. (Você pode utilizar a consulta criada no exercício 1 e modificála). 

Se você informar 12000 terá o seguinte resultado:

| LAST_NAME | SALARY |   
|-----------|--------|
| King      | 24000  |  
| Kochhar   | 17000  |  
| De Haan   | 17000  |
| Russell	  | 14000  |
| Partners	| 13500  |
| Hartstein | 13000  |

11. O departamento de RH quer uma consulta baseada em um manager. Crie uma consulta que peça ao usuário o `manager_id` e liste as colunas `employee_id`, `last_name`, `salary` e `department_id` para os empregados do manager. 

O departamento de RH quer ter a habilidade de ordenar por alguma coluna. Permita que seja informada a coluna desejada. Você pode testar 
os dados com os seguintes valores.

`manager_id = 103`, sorted by employee `last_name`:

| EMPLOYEE_ID | LAST_NAME | SALARY | DEPARTMENT_ID|
|-------------|-----------|--------|--------------|
|     105	    | Austin    | 4800	 |     60       |
|     104	    | Ernst     |	6000	 |     60       |
|     107	    | Lorentz   | 4200	 |     60       |
|     106	    | Pataballa | 4800	 |     60       |

12. Liste todos os `last names` dos empregados que _contenham_ a terceira letra do nome `a`.

| LAST_NAME |  
|-----------|
| Grant     | 
| Grant     | 
| Whalen    | 

13. Liste os last names de todos os empregados que contenham a letra `a` e `e` no `last_name`.

| LAST_NAME |  
|-----------|
|De Haan    |
|Faviet     |
|Raphaely   |
|Colmenares |
|Nayer      |
|Markle     |
|Philtanker |
|Patel      |
|Davies     | 
|Partners   |
|Sewall     |
|Bates      |
|Fleaur     |
|Gates      |
|Whalen     |
|Hartstein  |
|Baer       |