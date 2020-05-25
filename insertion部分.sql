-- insertion
-- 创建用户：uid统一格式为u-----, 昵称、性别、注册日期、是否为大会员随机。
insert into users
	values ('u10020','genius','male','2016-2-28','false',);
-- 创建分区：（初始化）
insert into zones
	values('01','donghua');
insert into zones
	values('02','fanju');
insert into zones
	values('03','yinyue');
insert into zones
	values('04','guochuang');
insert into zones
	values('05','wudao');
insert into zones
	values('06','youxi');
insert into zones
	values('07','keji');
insert into zones
	values('08','shuma');
insert into zones
	values('09','shenghuo');
insert into zones
	values('10','guichu');
insert into zones
	values('11','shishang');
insert into zones
	values('12','zixun');
insert into zones
	values('13','yule');
insert into zones
	values('14','yingshi');
insert into zones
	values('15','fangyingting');
--创建管理员：（对应15个分区，需要生成一下）ID统一:ad101~ad115
--邮箱统一：ad1--@mails.bilibili.com
insert into admins
	values('ad101','Animate','ad101@mails.bilibili.com','01');
--创建作品：AV号统一av0000001,‘av’后面有7位数字,日期格式如下
insert into works
	values('av0000001', true,'2019-10-24', true,'01','ad105');
--创建vip：（初始化）
insert into VIP
	values('01', 30, 15.0);
insert into VIP
	values('02', 90, 45.0);
insert into VIP
	values('03', 360, 148.0);
--创建动态：post_id统一po-------,po+7位数字。yuanchuang 或 zhuanzai，false为转载
insert into posts
	values('po0000001','2019-10-24','yuanchuang', 'https://www.bilibili.com/video/BV1tC4y1H7yz/');
--创建上传：
insert into uploads
	values('av0000001','u10001','2019-10-24');
--创建收藏：
insert into collection
	values('av0000001','u10001','2019-10-24');
--创建订阅：
insert into subscribe
	values('av0000001','u10001','2019-10-24');
--创建观看：最后一项是百分之
insert into play
	values('av0000001','u10001','2019-10-24',80.75);
--创建点赞：
insert into likes
	values('av0000001','u10001','2019-10-24');
--创建投币：
insert into likes
	values('av0000001','u10001','2019-10-24',1);
--创建关注：
insert into follow
	values('u10006','u10005','2019-10-24');
--创建弹幕：第二个时间是视频的时间节点
insert into danmaku
	values('av0000001','u10001','2019-10-24','01:32:23',1,'666');
--创建动态评论
insert into posts_comment
	values('u10001','po0000001','666','2019-10-24');
--创建作品评论
insert into works_comment
	values('u10001','av0000001','666','2019-10-24');
--创建分享
insert into shares
	values('u10001','av0000001','2019-10-24','wechat');
--创建发布动态
insert into posting
	values('po0000001','u10001','2019-10-24');
--创建成为vip
insert into VIP
	values('u10001','2019-10-24','01');
	