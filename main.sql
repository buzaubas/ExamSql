-- 1

select FirstName, LastName from Member;

-- 2

select Team, FirstName, LastName from Member where Team like 'TeamB';

select Team, FirstName, LastName from Member where Team like 'TeamA';

select Team, FirstName, LastName, PracticeNight from Team join Member on Member.Team = Team.TeamName;

-- 3

--create procedure byGender 
--			@gender char(1)
--as
--select * from Member where Gender = @gender;

declare @var char(1);
set @var = 'M';

exec byGender @var;

-- 4

declare @id int;
set @id = 24;

select TourName, TourType, MemberID, Year from Tournament join dbo.Entry on Entry.TourID = Tournament.TourID where Tournament.TourID = @id;



-- 5

--create trigger JoinDate_Validate
--on Member 
--instead of INSERT, UPDATE
--as
--if (select JoinDate from inserted) < GETDATE()
--BEGIN 
--	insert into Member select * from inserted
--END
--else
--BEGIN
--	print 'Not appropriate date';
--END

--drop trigger JoinDate_Validate;

insert into Member 
values (518, 'Adams', 'Dias', 'Junior', '289374', 14, '2020-04-14', NULL, NULL, 'M');
