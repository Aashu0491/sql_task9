create table call_centre(
	id char(60),
	customer_name varchar(150),
	sentiment varchar(120),
	CSAT_Score int,
	call_timestamp char(90),
	reason varchar (90),
	city varchar(56),
	state varchar(90),
	channel varchar(60),
	response_time varchar(150),
	call_duration int,
	call_centre varchar(120)
)
select * from call_centre
insert into call_centre (id,customer_name,sentiment,csat_score,call_timestamp,reason,city,state,channel,response_time,call_duration,call_centre)
values('BPQ-80812785','aakanksha','very positive',9,'14-02-2024','payments','nagpur','maharashtra','web','within_SLA',12,'Chicago/IL')                                          "

copy call_centre from'E:\Data Analytics\da9\SQL\tasks\sql 9\data.csv' DELIMITER ',' csv header


select * from call_centre
--output maharashtra
select state from call_centre where state ~*'^m[a-z]{5}s[a-z]{4}$'

select id from call_centre where id ~* '^b[a-z]{2}-8[0-8]{2}[0-9]{5}'

select id from call_centre where id ~* '^b(p|q){2}-8[0-8]{2}[0-9]{5}'

	--output negative
select sentiment from call_centre where sentiment ~* '^n[a-z]{2}a[a-z]{4}$'
 --output aakanksha
select customer_name from call_centre where customer_name ~* '^a[a-z]{2}a[a-z]{5}' 

select reason from call_centre where reason ~* '^p[a-z]{4}n[a-z]{2}$'