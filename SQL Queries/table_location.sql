-- Define database
use sensor_analysis;

-- Drop table if already exists
drop table if exists location;

-- Create table
create table location (
	loc_id int not null auto_increment,
    loc_name varchar(255) not null,
	org_id int not null,
    constraint loc_pkey primary key (loc_id),
    constraint loc_org_fkey foreign key (org_id) references organisation(org_id)
)