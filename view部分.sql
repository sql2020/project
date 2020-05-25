--view
--Fans(View)
create view Fans as
select uid2, (count(uid1))as fans_cnt
from follow
group by uid2;
--使用方法：
select fans_cnt
from Fans
where uid2 = 'u10001';

--Ucoins
create view Ucoins as
select play_coins.uid, 
(sum(play_coins.play_sum) + sum(in_coins.sum) - sum(ex_coins.sum))as coins_cnt
from
(select uid, count(play_date)/5 as play_sum
from play
group by uid) as play_coins, 
(select uploads.uid, sum(coins_num)
from uploads, coins
where uploads.av = coins.av
group by uploads.uid) as in_coins,
(select uid, sum(coins_num)
from coins
group by uid) as ex_coins
where play_coins.uid = in_coins.uid and in_coins.uid = ex_coins.uid
group by play_coins.uid;
--使用方法
select coins_cnt
from ucoins
where uid = 'u10001';

--experience
create view experience as
select uid, (10*sum(count))as exp_sum
from 
(select uid, av, play_date, count(uid) 
from play
group by (uid, av, play_date))as diff
group by uid;
--使用方法
select exp_sum
from experience
where uid = 'u10001';

--Ulevel
create view Ulevel as
select uid, (exp_sum/100) as user_lv
from experience;
--使用方法
select user_lv
from Ulevel
where uid = 'u10001';

--Collection_num
create view Collection_num as
select av, count(uid)
from Collection
group by av;
--使用方法
select count from Collection_num
where av = 'av0000001';

--Like_num
create view Like_num as
select av, count(uid)
from likes
group by av;
--使用方法
select count from Like_num
where av = 'av0000001';

--Works_coins
create view work_coins as 
select av, sum(coins_num)
from coins
group by av;
--
select sum from work_coins
where av = 'av0000001';

--Play_num
create view Play_num as
select av, sum(count)
from 
(select uid, av, play_date, count(uid) 
from play
group by (uid, av, play_date))as diff
group by av;
--
select sum from Play_num
where av = 'av0000001';

--Sub_num
create view Sub_num as
select av, count(uid)
from subscribe
group by av;
--
select count from Sub_num
where av = 'av0000001';

--works_num
create view works_num as
select zone_id, count(av)
from works
group by zone_id;
--
select count from works_num
where zone_id = '01';