
alter table player_bios
	add column "height in inches" numeric;
	
update player_bios 
	 set "height in inches" = 
	 12*split_part(height,'-',1)::integer + split_part(height,'-',2)::integer;
	
alter table player_bios
	drop column height;
	
alter table player_bios
	rename column "height in inches" to height;
	
select firstname, lastname, height from player_bios
	limit 5; 