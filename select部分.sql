--检索作品
--按分区
select av from works
where zone_id = '01';
--可以加在后面的附加条件
--按创建时间（最新）
order by works_create_date desc;
--按播放量多优先
select av 
from works, play_num
where works.uid = play_num.uid
--这里还可以再添加其他约束
order by play_num.sum;