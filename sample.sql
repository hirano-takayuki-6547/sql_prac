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
select
    *
from
    employee
    cross join department;

-- 
select
    e.emp_id,
    e.emp_name,
    d.dept_id,
    d.dept_name
from
    employee e
    left join department d on e.dept_id = d.dept_id;

-- 
select
    e.emp_id,
    e.emp_name,
    d.dept_id,
    d.dept_name
from
    employee e
    right join department d on e.dept_id = d.dept_id;

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
    left join department d on e.dept_id = d.dept_id
    left join employee e2 on d.mgr_id = e2.emp_id;

-- 
select
    'customer' as 'table',
    count(*)
from
    customer
union
select
    'employee',
    count(*)
from
    employee
union
select
    'department',
    count(*)
from
    department
union
select
    'product',
    count(*)
from
    product
union
select
    'packedsales',
    count(*)
from
    packedsales
union
select
    'sales',
    count(*)
from
    sales;

-- 
select
    c.cust_name,
    ps.cust_address,
    ps.delivery_date
from
    packedsales ps
    join customer c on ps.cust_id = c.cust_id
where
    ps.psales_no = 3;

-- 
select
    p.prod_name,
    s.quantity * s.price as amount
from
    sales s
    join product p on s.prod_id = p.prod_id
where
    s.quantity >= 3;

-- 
select
    e.emp_id,
    e.emp_name,
    sum(ps.total)
from
    packedsales ps
    join employee e on e.emp_id = ps.emp_id
group by
    e.emp_id
order by
    e.emp_id;

-- 
select
    p.prod_id,
    p.prod_name,
    sum(s.quantity),
    sum(s.price)
from
    sales s
    join product p on s.prod_id = p.prod_id
group by
    p.prod_id,
    p.prod_name
having
    sum(s.price) >= 500000
order by
    p.prod_id;

-- 
select
    ps.psales_no,
    ps.psales_date,
    ps.total,
    s.prod_id,
    s.quantity,
    s.price
from
    packedsales ps
    join sales s on ps.psales_no = s.psales_no
    join customer c on ps.cust_id = c.cust_id
where
    c.cust_name like '田中%';

select
    ps.psales_no,
    ps.psales_date,
    ps.total,
    s.prod_id,
    s.quantity,
    s.price
from
    packedsales ps
    natural join sales s
    natural join customer c
where
    c.cust_name like '田中%';

-- 
select
    p.prod_name,
    sum(s.quantity * s.price) as total
from
    sales s
    natural join product p
group by
    p.prod_name
order by
    total desc;

-- 
insert into
    employee (
        emp_id,
        dept_id,
        emp_name,
        birthday,
        hiredate,
        gender,
        sal,
        comm
    )
values
    (
        20,
        40,
        '山田　花子',
        '1980-01-02',
        CURRENT_DATE,
        2,
        4000,
        null
    );

-- 
show columns
from
    employee;

-- 
insert into
    employee (emp_name)
values
    ('hirano');

insert into
    employee (emp_id, emp_name)
values
    (21, '渡辺　健一');

insert into
    department (dept_id, dept_name, loc, mgr_id, adept_id)
select
    dept_id + 5,
    concat ('第2', dept_name),
    loc,
    mgr_id,
    adept_id
from
    department;

-- 
insert into
    employee (
        emp_id,
        dept_id,
        emp_name,
        birthday,
        hiredate,
        gender,
        sal,
        comm
    )
values
    (
        100,
        20,
        'hirano',
        '2000-11-07',
        '2000-11-07',
        1,
        999999999999,
        9999999999
    );

-- 
insert into
    customer (cust_id, cust_name)
select emp_id + 1000, emp_name
from
    employee;

-- 

