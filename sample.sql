charset cp932;

select
    discount,
    count(discount),
    sum(discount),
    avg(discount),
    min(discount),
    max(discount)
from
    product
group by
    discount
having
    count(discount) >= 5
order by
    discount;

-- 
select
    discount,
    count(discount),
    sum(discount),
    avg(discount),
    min(discount),
    max(discount)
from
    product
where
    cost >= 15000
group by
    discount
order by
    discount;

-- 
select
    emp_id,
    avg(total)
from
    packedsales
group by
    emp_id
order by
    emp_id;

-- 
select
    psales_date,
    sum(total)
from
    packedsales
group by
    psales_date
order by
    sum(total)
limit
    5;

-- 
select distinct
    emp_id
from
    packedsales;

-- 結合
select
    e.emp_id,
    e.emp_name,
    d.dept_id,
    d.dept_name
from
    employee e
    join department d on e.dept_id = d.dept_id;

-- 
select
    d.dept_id,
    d.dept_name,
    d.mgr_id,
    e.emp_name
from
    department d
    join employee e on d.mgr_id = e.emp_id;

-- 
select
    d.dept_id,
    d.dept_name,
    d2.adept_id,
    d2.dept_name
from
    department d
    join department d2 on d.adept_id = d2.dept_id;

-- 
select
    e.emp_id,
    e.emp_name,
    d.dept_id,
    d.dept_name.d.mgr_id,
    e.emp_name
from
    employee e
    join department d on e.dept_id = d.dept_id;

join employee e2 on d.mgr_id = e.emp_id;

-- 
select
    d.dept_id,
    d.dept_name,
    count(*),
    sum(e.sal),
    avg(e.sal),
    min(e.sal),
    max(e.sal)
from
    employee e
    join department d on e.dept_id = d.dept_id
group by
    dept_id
order by
    dept_id;

-- 
select
    e.emp_id,
    e.emp_name,
    d.dept_id,
    d.dept_name
from
    employee e
    natural join department d;

-- 
select
    *
from
    employee
    cross join department;

-- 
select
    d.dept_id,
    d.dept_name,
    d2.adept_id,
    d2.dept_name
from
    department d
    join department d2 on d.adept_id = d2.dept_id;

-- 
select
    e.emp_id,
    e.emp_name,
    d.dept_id,
    d.dept_name,
    d.mgr_id,
    e2.emp_name
from
    employee e
    join department d on e.dept_id = d.dept_id
    join employee e2 on d.mgr_id = e2.emp_id;

-- 
select distinct
    e.emp_id,
    e.emp_name,
    p.prod_id,
    p.prod_name,
    c.cust_id,
    c.cust_name
from
    employee e
    join packedsales ps on e.emp_id = ps.emp_id
    join customer c on ps.cust_id = c.cust_id
    join sales s on ps.psales_no = s.psales_no
    join product p on s.prod_id = p.prod_id
order by
    e.emp_id;

-- 
select
    d.dept_id,
    d.dept_name,
    count(*),
    sum(e.sal),
    avg(sal),
    min(sal),
    max(sal)
from
    employee e
    join department d on e.dept_id = d.dept_id
group by
    d.dept_id
order by
    dept_id;

-- 
select
    e.emp_id,
    e.emp_name,
    d.dept_id,
    d.dept_name
from
    employee e
    join department d using (dept_id);

-- 
select
    e.emp_id,
    e.emp_name,
    d.dept_id,
    d.dept_name
from
    employee e
    natural join department d;

-- 

