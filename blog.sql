-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-28 15:56:55
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL COMMENT '博文ID',
  `author_id` int(11) NOT NULL COMMENT '作者ID',
  `title` varchar(50) NOT NULL COMMENT '博文标题',
  `blog_content` text NOT NULL COMMENT '博文内容',
  `data_state` smallint(1) DEFAULT '1' COMMENT '数据状态： 1：显示 0：删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blogs`
--

INSERT INTO `blogs` (`blog_id`, `author_id`, `title`, `blog_content`, `data_state`, `create_at`, `update_at`) VALUES
(29, 17, 'wangEditor测试完整版', '<p align="center"><b>粗体</b></p><p align="center"><u>下划线</u></p><p align="center"><i>斜体</i><br></p><p align="center"><strike>中划线</strike></p><p align="center"><font color="#ff0000">颜色</font></p><p align="center"><span style="background-color: rgb(0, 255, 0);">背景色</span></p><p align="right"><span style="background-color: rgb(0, 255, 0);"><span style="background-color: rgb(136, 0, 0);"></span><font size="6" face="楷体"><span style="background-color: rgb(255, 255, 255);">楷体</span></font></span></p><span style="background-color: rgb(0, 255, 0);"><font size="6" face="楷体"><span style="background-color: rgb(255, 255, 255);"></span></font><br></span><ul><li>无序列表</li><li>无序列表</li><li>无序列表</li></ul><br><ol><li>有序列表</li><li>有序列表</li><li>有序列表</li></ol><br><a href="http://www.baidu.com" target="_blank">百度一下</a><br><br><table class=""><tbody><tr><td><span>&nbsp;1</span></td><td><span>&nbsp;2</span></td><td valign="top">3<br></td><td><span>4</span></td></tr><tr><td><span>8</span></td><td><span>7</span></td><td valign="top">6<br></td><td><span>&nbsp;5</span></td></tr></tbody></table><span>&nbsp;<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif"><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif"><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif"><img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif"></span><p><br></p>', 0, '2016-12-23 08:10:59', '2016-12-27 16:23:34'),
(34, 36, '美好时光', '<p>&nbsp;&nbsp;&nbsp;&nbsp;转眼间两个月过去了，实验室带给我的不仅是知识，更多的是一种精神和情感上的充实。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;刚进入见习阶段，我们班可以说是组队来的，因为我们班就占了5个名额。看着教室里的每个人都对实验室充满着向往之情，感觉自己的竞争者又多又强大。实验室里还有一群非常热心非常友好与你有着共同梦想的学长学姐们。还记得刚来不久电脑坏了，邹鑫学姐二话不说帮我拿去给学长修，非常感动。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;一开始学长学姐们从头脑风暴，思维导图，ps技术开始将我们引入项目最基础的概念。并每周都会布置相关的作业，可能是因为刚开始的作业相对比较简单，我们这群人依旧充满着热情，第一次用ps做球，那天下午每个人都非常细心认真的完成作业，还记得我们一起比较谁做的最好看，教室里传出最多的话就是“哇，你这里怎么做的，能教教我吗？”。第一周以热情告一段落。每个人都是开心的，因为有所成就了。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;步入第二周，星期五晚上邹鑫学姐点评了上周的作业，得了个优秀作业还是挺开心的，因为又可以减分了哈哈。这周就开始加深难度了，学的是html前端，看到周围很多人都是有一点基础的，感到有些压力，因为毕竟还是自学，我们班课程比较多，基本安排实验室的学习都是晚上，当然想要在一周之内自学做出一个完整的网页还是要付出点代价的，没时间咋办呢，熬夜啊，牺牲点睡觉的时间就行了啊，没想到离开高三的苦逼生活，在大学还是得熬夜= =。并且这周就开始和学长学姐们聊了起来，一方面呢问些知识的问题，一方面呢又聊点别的话题，感觉学长学姐们都聊得来。就这样东问问西问问，经过三次的草稿终于在前一天把那个网页给做了出来，那天心情里各种滋味，还挺爽，没想到自己可以完成。但是这周过后，原本第一周一起并肩作战的战友就莫名的少了好多，他们都有和我说很多理由，我听了之后现在想想也挺可惜的，总之吧，人都有自己的选择，而我选择的是实验室。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;从第三周开始，身边的人就开始慢慢减少了，听到埋怨的声音也越来越多，不过我还是充满着一颗热情的心。到了自学php的时候我才发现我的时间和我的智力是多么的跟不上，有过想放弃本周作业的冲动。之后和学姐学长们交流后找到了学习的方法，也在前一天把这周的作业搞定了，虽然并不是很完美，但是我知道我尽力了。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;不知不觉也到了大作业的时候，当拿到这项作业的时候回想起邹鑫学姐说的一句话，我们布置作业并不是让你们每周只是为了完成作业，而是希望你们多学习一点知识，不然即使你坚持了过来，大作业不会做就面临着责任与能力的选择，非常艰难的选择。现在听了这句话非常值得，因为庆幸我不是那个不能为团队做贡献的人。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;我们有一个负责，友善的组长，我们的组员也都很有积极性，这使我对大作业充满了信心，每个人有每个人的分工，最后汇总到一起，虽然非常累，但是看到最后的成品也感到很有成就感，毕竟这是大学生活以来干的最有意义的事情了，很感谢实验室让我大一上半学期没有感觉到荒废，过的十分充实，还认识了一群志同道合的朋友，不管怎么说，实验室充满了挑战，充满了激情，充满了友情，平时没机会说这么多，今天就把它记录下来吧！</p>', 1, '2016-12-27 11:44:07', '2016-12-28 07:01:01'),
(35, 37, '致我的2016', '<p>再见，我的2016</p><p>2016，我看破了一个谎言。</p><p><br></p><p>可以说我的成长仅仅是从2016年开始的，从一月到六月的一路冲刺，满怀激情，希望迈入一片新的天地，高三可能就成为了我人生的巅峰。从六月到十二月，一步一步的沉沦，我感觉整个世界都变的昏暗。虽然一路走来有说有笑，但我总是在质问自己：这，难道就是我想要的生活吗？</p><p><br></p><p>他们一直在欺骗我，说好的高考结束进入大学也就会轻松，说好的别担心，一切都会没事的呢？骗子，一群骗子。</p><p>&nbsp;</p><p>不得不回首看看，我这一年，到底做了些什么。</p><p>&nbsp;</p><p><b><font size="4">一月到六月</font></b></p><p>清晨六点，微光和黑暗交接的地方勾勒出山峦的影子，沉睡的我被起床号惊醒，我知道新的一天又开始了。我开始憧憬未来，幻想自己成功后的样子。内心中的一句话迸发出不竭的动力——我一定要考上一所好大学。带着自己的信念和年少轻狂，鼓起勇气掀开被子，向着目标进发，从寝室到宿舍的路不长，但每次穿过中心广场的时候都会抬头看一下那一颗始终亮着的星星，似乎它一直在那里等着我。</p><p>&nbsp;</p><p>我微笑着对自己说：那就是我。</p><p>&nbsp;</p><p>教室里每个人都带着自己的那一个小秘密，带着疲乏的躯壳，用尽浑身解数去争取每一个能够在高考中得分的知识点。我，也随着大家的队伍，慢慢的前行。</p><p>&nbsp;</p><p>我不是一个聪明人，在某种程度上说，我是一个愚钝的人；我不是一个勤奋的人，在某程度上说，我是一个懒惰的人。</p><p>&nbsp;</p><p>每一次考试过后我都害怕别人看到我的试卷，因为我害怕别人说我“你是不是傻，这个你都不会”。每一个早晨我都舍不得离开温暖的被窝，似乎它就是我的全世界。</p><p>&nbsp;</p><p>我不知道家长们把高考看的有多重，但是在高三的最后阶段我没有任何的压力，我只是想用尽自己的力量，完成最后的目标就够了。高考将是人生中第一次也是最后一次公平的竞争，如果我不选择在这一场没有硝烟的战役中胜出，有可能我这辈子就只能平平淡淡了。</p><p>&nbsp;</p><p>作为一个年轻人，谁不想自己在成功的路上时轰轰烈烈的，未来是圆满幸福的。谁不想以后能够在别人面前炫耀自己的生活，让自己过去的艰辛成为史诗。我就一直，一直那样幻想。</p><p>&nbsp;</p><p>一周两考，周三，周末。每一道题，都镌刻了我内心的伤痛，不是我都不会，而是我觉得心好累。看着以前齐头并进的同学已经站在了成绩表的前段，而我还在原来的位置，停滞不前，我不知道用什么来回答自己，相同的时间，我都干了些什么，她能向前跨越的缘由又是什么。</p><p>&nbsp;</p><p>每一次考试结束，我都想看到自己的那一点点进步，但是……每一次的结果都不太尽人意，可能是我太笨了吧！</p><p>&nbsp;</p><p>临近高考的前几周，那个曾经和我齐头并进的的女孩下晚自习后和我一起出教室，说着说着就谈到了自己的以后，那个时候我很清楚自己的实力，清楚高考之后会得到什么样的结果。我们在一起聊了很久，最会离开的时候她说：“说了这么久，我们好像没说什么。”而在我看来聊未来，感叹人生很多很多。她注重的东西和我不一样了，我看中谈话的过程，而她更注重谈话的内容。差距，就在这里。</p><p>&nbsp;</p><p>似平淡却又几经波澜的高考100天倒计时结束了。我，就这样，踏进了考场。</p><p>&nbsp;</p><p>说来也是有趣了，考前莫名其妙的握了个手，相互祝好。就考了同样的分数。笑着说报同一所大学。但是最后还是走向了不一样的大学校门。</p><p>&nbsp;</p><p><b><font size="4">六月到九月</font></b></p><p>六月十五号，我躺在了手术台，做了近视矫正手术。我还清楚的记得手术后在回去的大巴车上看月亮，这也许是我看见月亮最兴奋的一次，感觉整个人生都亮了。</p><p>&nbsp;</p><p>七月，我成为了我英语启蒙教师的助教，和一群小学生初中生一起学习英语。他们不停地问我这样那样的问题，看着那群孩子们，就好像看到了曾经的我，好奇、纯洁、充满斗志。我只想笑，我还有点想哭。嘿！正经点，多大的人了。</p><p>&nbsp;</p><p>八月，也许就是命运的安排，阴差阳错的，档案投到了农大。曾经的梦想虽然在此破碎了，但是农大也挺好，农大那么大，离家里也挺近。</p><p>&nbsp;</p><p>九月十号，那天下着小雨，狼狈的我第一次踏进了农大校园。遇见了第一个送我进寝室的学姐，踏进了芷兰。</p><p>&nbsp;</p><p>309，我总觉得这是一个神奇的数字，它在我的人生中出现的次数太多。在那个几十平米的小房间里，挤满了怀揣梦想的青年。我要谢谢我能有这么好的室友，感谢来自祁阳成熟大度的聪哥（卟~），感谢来自四川内敛闷骚的科总（妈卖批），感谢来自益阳的阳光开朗的奇（jī）哥，感谢来自广东的自恋到没水准的伟杰（木门特），感谢来自郴州的带着一颗少女心的壮汉鹏程（挖死你），感谢来自贵阳的开车不限速的司机（嗯~啊~），感谢来自重庆喜欢狂拐的劲峰（庸熟），感谢那个来自云南一直在说大道理的“宝强”（啊~你们，吹牛~）。你们陪我走过了军训，给我过了人生中第一个那么多人为我准备的生日，陪我走过了一个学期，相信我们会走的更远。</p><p>&nbsp;</p><p>还有还有，当然还有你们……</p><p>&nbsp;</p><p>庆幸我加入了图青协加入了新网部，我要感谢凯瑞学姐（么么哒！），如果不是她的强势水群，我绝对不会遇见了那么好的你们，也不会有人叫我“张家界”。我的部长们，和我一起并肩的干事们，有你们真好。</p><p>&nbsp;</p><p>我还要感谢CCTV，感谢国家，额！好像跑偏了。</p><p>&nbsp;</p><p>其实我想说：无论你来自哪里，我都感谢你出现在我的生命里。</p><p>&nbsp;</p><p>我不知道自己为什么就这样恍恍惚惚的度过了自己大一的第一学期，回想起第一次踏进农大校园的兴奋，憧憬着美好的未来，然而我所到之处，并没有留下任何我的痕迹，我又在想，我干了什么。</p><p>&nbsp;</p><p>他们说，没有逃过课的大学生活算不上大学生活，我冒着被抓的风险也尝试了一把；他们说，不打游戏的大学生活算不上大学生活，我跟着室友一起踏上了开黑的道路，在短暂的几局游戏中获得空洞的快乐；他们说到考试不浪的大学考试算不上大学考试，我用尽全力浪的飞起。上课玩手机、下课打游戏，该玩的也玩了，该体验的也体验了，然而这一切过后，我什么都没有得到，整个身体都感觉被放空了，没有思想、毫无目的，这也许就是他们说的虚度光阴、断送前程吧！</p><p>&nbsp;</p><p>我感觉好忙。我知道大家都忙。</p><p>&nbsp;</p><p>高中的时候是忙的井井有条，然而大学却忙得莫名奇妙，本想充实自己的生活，却没想自己的生活会被一些琐碎的事情占满。从高中毕业以后，和以前的三五好友聊天的时间越来越少了，虽然读了不少鸡汤文，知道无论如何也要抽出时间维持一下感情，但是我，就是做不到。</p><p>&nbsp;</p><p>就像我说的：“Two ways,two worlds.”在人生路上，再好的朋友也会渐行渐远。我们生活的环境不同，身边的人也换了，找不到共同话题的我们只能聊那几件陈年的旧闻趣事，抑或相互问好，聊个三言两语就不知道该说些什么了，最后不得不以几个句号结束因重温回忆而有目的地对话，不过如此。</p><p>&nbsp;</p><p>我想去了解你的生活，但是，我沉浸在自己的世界里，就像你一样，不想回头观望那几处看烦了的风景。我是多么不想说再见，何止是我一个人，渴望享受曾经的安逸不用去管面前的繁华，但是在自己的院子里看不到整个世界。</p><p>&nbsp;</p><p>好像是在微博上看到的一句话“别把欲望当理想，莫将世故当成熟。”十八年，说来很长，过来很短。人生有几度春秋，我又能过几个十八年，每个人都面朝着未来，做着自己愿意或者不愿意的选择，我不知道自己还会在命运的十字路口徘徊多久。</p><p>&nbsp;</p><p></p><p>这篇文章送给自己，也送给你。</p><p><br></p>', 1, '2016-12-27 16:07:40', '2016-12-27 16:07:40'),
(36, 38, '一年后', '<p>&nbsp;&nbsp;&nbsp;&nbsp;说实话，在大一整个一年，我对大学的想法其实还是停留在好好读书这条道上，当然这跟我高中老师灌输的只有努力读书才有出路的思想是离不开的。所以，现在回想起我刚进校的第一年，我会有的感觉就是我一直在学习，但从未学到过什么。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;我感觉我现在学的东西对我以后出去工作的内容来说也不一定会有帮助。所有在大二我毅然决然的选择继续面试实验室。在大一的时候我因为目标不明确而被刷过一次，那次我在对实验室毫不知情的情况下选择了运营，然后失望的被刷了下来。但是幸好，我最后我还是进来了，虽然说我现在进到实验室的时间只有短短一个月，但是我觉得比过我大一一年学到的东西，从前我自己都不相信自己是一个学计算机的，我对计算机方面的东西毫无所知，直到进入实验室，我才慢慢了解计算机方面的一些知识。慢慢接触到一些很牛逼的东西，知道这在我身边的很牛逼的人，这大大激发了我学习程序的激情和热情，我感觉我现在学习有了方向，我知道自己应该向着这个方向前进。</p><p></p><p>&nbsp;&nbsp;&nbsp;&nbsp;实验室给我的感觉和收获还是很大的。</p><p><br></p>', 1, '2016-12-27 16:22:10', '2016-12-27 16:22:10'),
(39, 17, 'GitHub+Hexo创建个人博客', '<link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_filelist.xml"><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_themedata.thmx"><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_colorschememapping.xml"><p><font size="4">清晰版可浏览</font><a href="http://blog.csdn.net/sssnowyue/article/details/53860849" target="_blank">http://blog.csdn.net/sssnowyue/article/details/53860849<br></a></p><p><font size="4">一．必备程序下载：</font></p><p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n<b>Git</b></p><p>一款免费、开源的分布式版本控制系统</p><p><a href="https://git-scm.com/downloads" target="_blank">下载Git</a><span> <br></span></p><p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n<b>Node.js</b></p><p>由于Hexo是一款基于Node.js的静态博客框架</p><p><a href="https://nodejs.org/en/download/" target="_blank">下载Node.js</a></p><p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n<b>Hexo</b></p><p>打开Git Shell输入命令如下：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; npm install\r\nhexo-cli –g</p><p>&nbsp;</p><p><font size="4">二．新建博客</font></p><p>1.&nbsp;&nbsp;&nbsp;&nbsp; 在D盘下新建一个blog文件夹，用Git\r\nShell进入此文件夹</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cd\r\nd:blog</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp; 在此文件夹里安装Hexo</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hexo\r\ninit</p><p>&nbsp;</p><p><font size="4">三．写博文</font></p><p>1.&nbsp;&nbsp;&nbsp;&nbsp; 新建一篇博文</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hexo\r\nnew "blog_name" 简写：hexo n "blog_name"</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp; 写博文内容</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新建一篇博文后有提示博文所在目录</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INFO\r\nCreated：D:logsource\\_posts blog_name.md</p><p>找到此.md文件，用<a href="http://markdownpad.com/" target="_blank">Markdown编辑器</a><span> </span>或其他文本编辑器打开进行编辑</p><p>3．&nbsp; .md转换成.html</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hexo\r\ngenerate 简写：hexo\r\ng</p><p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n博文上传至本地服务器</p><p>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; hexo server 简写：hexo s</p><p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n本地浏览博客</p><p>浏览器访问<a href="http://localhost:4000/" target="_blank">http://localhost:4000/</a></p><p>&nbsp;</p><p><font size="4">四．博客部署到GitHub上</font></p><p>1.&nbsp;&nbsp;&nbsp;&nbsp; 注册<a href="https://github.com/" target="_blank">GitHub</a><span> </span>账户</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp; 创建一个仓库repository，命名为’username’.github.io</p><p>3.&nbsp;&nbsp;&nbsp;&nbsp; 编辑本地blog目录下_config.yml文件如下：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; deploy:</p><p>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; type: git</p><p>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; repository:\r\nhttp://github.com/’username’ /’username’.github.io.git</p><p>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; branch: master</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注意：.yml文件对格式规范要求很严格：type:、repository:、branch:前面有两个空格，冒号后面有一个空格。</p><p>4.&nbsp;&nbsp;&nbsp;&nbsp; 创建上传依赖包</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; npm install hexo-deployer-git --save</p><p>5.&nbsp;&nbsp;&nbsp;&nbsp; 开始部署</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hexo\r\nnew "blog_name" 简写：hexo n "blog_name"</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hexo\r\ngenerate 简写：hexo\r\ng</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上传至GitHub</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hexo\r\ndeploy 简写：hexo\r\nd</p><p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n浏览博客</p><p>浏览器访问’username’.github.io.git</p><p>&nbsp;</p><p><font size="4">五．更换主题</font></p><p>1.&nbsp;&nbsp;&nbsp;&nbsp; 寻找个人喜爱的hexo主题GitHub仓库</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp; 打开blog目录，下载主题到本地</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git\r\nclone https://...(github文件地址) themes/theme_name</p><p>3.&nbsp;&nbsp;&nbsp;&nbsp; 更改_config.yml文件</p><p>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; theme: theme_name</p><p>4.&nbsp;&nbsp;&nbsp;&nbsp; 应用主题</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cd\r\nthemes/theme_name</p><p>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; git pull</p><p>5. &nbsp;&nbsp; 自动部署</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; npm\r\ninstall hexo-deployer-git –save</p><p><br></p><p><b>更多博文：</b></p><p><b><a href="http://blog.csdn.net/sssnowyue/article/details/53899512" target="_blank">会话管理cookie与session</a><span> <br></span></b></p><p><b><span><a href="http://blog.csdn.net/sssnowyue/article/details/53899844" target="_blank">PHP图形基本操作</a><span> <br></span></span></b></p><p><br></p><p><br></p>', 1, '2016-12-28 04:52:48', '2016-12-28 04:52:48'),
(40, 17, '跨越性见习', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从以前全寝最闲到这学期全寝最忙，每天过着程序猿的夜晚，只怪电脑的电不耐用，室友担心我猝死。时间与体力上走极端地去学课表上每一门课程，只怕跟不上节奏，只怕进不了实验室，只怕毕业时自己是个废物。</p><p><br></p><p>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 一周学一门计算机语言，快节奏，刺激！我会有条理性地提前一周学完课表上安排的课程。实验室给了我明确的学习方向。</p><p><br></p><p>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 项目阶段，被选为组长，感谢组员对我的认可。每天满脑子全是项目，从项目总体流程管理到组员哪一行代码需要修改，自己感觉记忆力衰退，靠着手机备忘录、电脑记事本记下每一个细节。只怕自己的失误给小组带来损失。</p>', 1, '2016-12-28 05:06:19', '2016-12-28 05:06:19'),
(41, 41, '实验室感想', '<link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_filelist.xml"><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_themedata.thmx"><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_colorschememapping.xml"><p>&nbsp;&nbsp;&nbsp; 不知不觉在实验室的实习期已经进入了尾声，我们的实习期是从2016.11.4日晚上开始，应该是 在2016.12.29号正式结束，现在回想起这一个多月来学到的知识，经历的过程，都是满满的回忆。</p><p>&nbsp;&nbsp;&nbsp; 刚开始步入这个实验室，是抱着一个憧憬向往的心态进来的，当时的想法是觉得这个实验室很厉害，在里面跟着大神们学东西，肯定会很有收获。我刚开始报的是设计方向，也许是自己不太适应，刚开始做设计方面的作业的时候完全是一头雾水。因为在进入实验室之前对这些都是零接触，我们专业偏向的是通信，电子，所以如果不是进入了实验室我可能近几年都不会接触到网页前端的设计。我现在清楚的记得第一周的作业是用PS制作一张海报，现在看起来是那么的简单，然而当时连PS软件都没见过的我的确是一脸懵的状态，我只能看学长学姐推荐的网站上面的教程，一点一点的自己摸索。而且在此期间，我也体会到了同学的重要性，在这里我认识了很多同学，在作业方面有问题不懂的时候我向他们询问他们都会非常耐心的跟我讲解。还有我的室友，我们两个每次都一起学习，有了她的陪伴我更有了坚持下去的动力。让我觉得难度最大的一次作业就是用HTML和CSS还原一个网页，因为HTML要记得细节点很多，总是记了前面的忘了后面的，所以那周的作业我没有完成的很好，而且整个人也十分沮丧，没有动力，不过我告诉自己要坚持。而在运营方面的作业我觉得我做的比较轻松，也比较感兴趣，尤其是PPT的制作，所以这应该也是我最后选择转到运营方向的原因。</p><p>&nbsp;&nbsp;&nbsp; 很快，12.15日我们就迎来了我们的大作业，分组完成。在这次大作业的完成过程中，让我最有感触的便是团队的力量真的是很伟大，身在这个小组让我感到非常幸福。我们两天集会一次，在最后阶段没课的时候基本上是天天集中在一起做项目，有课的时候便是一天集会两次，中午一次，晚上一次。因为我们觉得在一起做更加的方便，更好沟通。在这次大作业的完成过程中，我们组全程都很和谐，大家都会尽力的为别人着想，大家的心都在一起，为了我们这个项目在共同努力。在我们组长的带领下，我们都十分的积极向上有斗志，组长为我们这个组、为我们这个项目做了很多，我们都很感激他啦。在这个期间，虽然要做的很多，但是我们互相鼓励，相互包容。所以我们比较顺利的完成了这次的作业。</p><span>&nbsp;&nbsp;&nbsp; 见习期快结束了，很感谢这期间帮助我的人，这是我大学期间最有意义的一个月，收获的不仅仅只是学习上的，更有生活上的，我收获了很多友情，感受到了团队的力量，这些对我影响重大甚至受益终身，我会带着我学到的好好的努力下去！</span>', 1, '2016-12-28 05:16:54', '2016-12-28 05:16:54'),
(42, 40, '见素抱朴，不忘初心', '<link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_filelist.xml"><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_themedata.thmx"><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_colorschememapping.xml"><p>&nbsp;&nbsp;&nbsp; 每个人都在不断被影响着，也在被重塑着吧。</p><p>&nbsp;&nbsp;&nbsp; 小组大作业已经到了尾声，优秀的队友，舒服的搭档。所有的过程是那么的有条不紊，所有的一切是那么的顺其自然，一切都在意料之中。每个人都有自己的选择，我们都是如此，放弃一些不太重要的，换取一些重要的，值与不值，不足为外人道。因为我知道，我所收获的都是无价的，永比我付出的大得多。</p><p>&nbsp;&nbsp;&nbsp; 突然想到初中时候看的有关于居伊·德·莫泊桑的文章，“他将灵魂赎给魔鬼，这样的赌注，谁人敢下？莫泊桑敢，所以他是莫泊桑，而我们不是。”我愿意做一个独一无二的疯子。当冉阿让拿走卞福汝主教的银烛台以后，卞主教说“我的兄弟，我已经将你的灵魂收买，你现在属于善的一方了。”慢慢懂得当温润的血液浸到了巴克的眼睛时，他再一次感受到了野性的呼唤，那种野性不是从生物学能够解释的遗传，而是潜藏在狼族记忆当中世道相传，正如白牙回归人类一般吧，我开始始终相信每个人都有潜藏在内心的一种东西，并不是空穴来风，而是真真切切的一种记忆永远不会磨灭的遗传的记忆，将它释放出来吧，那将会是一头野兽。无眠的夜，内心平静的看着窗外，我相信我是对的，因为我感觉某种东西在呼唤，并且我相信，那就是野性的呼唤。</p><p>&nbsp;&nbsp;&nbsp; 相信每个人、每件事，都需要某个东西来引导着前进，每个人心中都有一颗之路的灯塔。读圣经，当受到冒犯，内心不安，面临选择时，上面的一些话给我力量。曾总是一味地看不起项羽，一生志向只在于高头大马衣锦还乡，崇拜刘邦，无牵无挂，江山自在心中。因为我相信，只要大脑还能让双眼坚毅地看着黑暗，心灵还能让双眼涌出泪水迎接黎明，一支钢笔，一沓稿纸，便敢浪迹天涯。</p><span>不管是什么样一个人，总要</span><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_filelist.xml"><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_themedata.thmx"><link href="file:///C:Users于越AppDataLocalTempmsohtmlclip1\01clip_colorschememapping.xml"><span>为某种东西而活。</span>', 1, '2016-12-28 05:18:39', '2016-12-28 05:18:39');

-- --------------------------------------------------------

--
-- 表的结构 `collect`
--

CREATE TABLE `collect` (
  `collect_id` int(11) NOT NULL COMMENT '收藏ID',
  `collector_id` int(11) NOT NULL COMMENT '收藏者ID',
  `col_blog_id` int(11) NOT NULL COMMENT '被收藏的博文ID',
  `data_state` smallint(1) DEFAULT '1' COMMENT '数据状态： 1：显示 0：删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `collect`
--

INSERT INTO `collect` (`collect_id`, `collector_id`, `col_blog_id`, `data_state`, `create_at`, `update_at`) VALUES
(46, 36, 34, 1, '2016-12-28 07:12:03', '2016-12-28 07:12:03'),
(45, 36, 40, 1, '2016-12-28 07:06:09', '2016-12-28 07:06:09'),
(44, 37, 42, 1, '2016-12-28 06:41:03', '2016-12-28 06:41:03'),
(47, 41, 42, 1, '2016-12-28 08:00:14', '2016-12-28 08:00:14'),
(48, 41, 35, 1, '2016-12-28 08:11:07', '2016-12-28 08:11:07'),
(49, 40, 34, 1, '2016-12-28 08:31:19', '2016-12-28 08:31:19'),
(50, 40, 41, 1, '2016-12-28 08:53:58', '2016-12-28 08:53:58'),
(51, 40, 40, 1, '2016-12-28 08:54:08', '2016-12-28 08:54:08'),
(52, 40, 36, 1, '2016-12-28 08:54:18', '2016-12-28 08:54:18'),
(53, 40, 35, 1, '2016-12-28 08:54:32', '2016-12-28 08:54:32'),
(54, 17, 42, 1, '2016-12-28 09:23:28', '2016-12-28 09:23:28'),
(55, 17, 41, 1, '2016-12-28 09:23:34', '2016-12-28 09:23:34'),
(56, 17, 36, 1, '2016-12-28 09:23:44', '2016-12-28 09:23:44'),
(57, 17, 35, 1, '2016-12-28 09:23:56', '2016-12-28 09:23:56'),
(58, 17, 34, 1, '2016-12-28 09:24:06', '2016-12-28 09:24:06');

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL COMMENT '评论ID',
  `parent_comment_id` int(11) DEFAULT '0' COMMENT '父评论ID',
  `commenter_id` int(11) NOT NULL COMMENT '评论用户ID',
  `com_blog_id` int(11) NOT NULL COMMENT '评论所属博文ID',
  `comment_content` varchar(255) NOT NULL COMMENT '评论内容',
  `data_state` smallint(1) DEFAULT '1' COMMENT '数据状态： 1：显示 0：删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`comment_id`, `parent_comment_id`, `commenter_id`, `com_blog_id`, `comment_content`, `data_state`, `create_at`, `update_at`) VALUES
(32, 0, 36, 39, '最辛苦的组长大佬', 0, '2016-12-28 07:05:19', '2016-12-28 07:05:36'),
(31, 0, 36, 41, '加油加油，我们组的大学霸', 1, '2016-12-28 07:03:28', '2016-12-28 07:03:28'),
(30, 0, 37, 42, '我们在时代的风口浪尖，为了自己而努力着，奋斗着，走到最后，回首时，我们会为自己感到骄傲。', 1, '2016-12-28 06:40:50', '2016-12-28 06:40:50'),
(29, 0, 37, 34, '一直在努力，一直在付出，总会有收获。相信有更好的明天。', 1, '2016-12-28 06:38:57', '2016-12-28 06:38:57'),
(28, 0, 37, 36, '你也可以变得更好。不忘初心，方得始终。', 1, '2016-12-28 06:37:51', '2016-12-28 06:37:51'),
(27, 0, 37, 41, '加油！我们一起努力。', 1, '2016-12-28 06:36:42', '2016-12-28 06:36:42'),
(33, 0, 36, 40, '辛苦了，我们的组长大佬!', 1, '2016-12-28 07:06:02', '2016-12-28 07:06:02'),
(34, 0, 36, 36, '我们一起收获，一起成长！', 1, '2016-12-28 07:06:50', '2016-12-28 07:06:50'),
(35, 0, 36, 35, '我们两个大一的很有体会，刚刚步入大学一切都还不适应，不过我们没有选择荒废！', 1, '2016-12-28 07:10:08', '2016-12-28 07:10:08'),
(36, 0, 36, 42, '加油，为了自己的目标奋斗', 1, '2016-12-28 07:11:40', '2016-12-28 07:11:40'),
(37, 0, 41, 42, '感谢这一段时间以来你的帮助哦，相信自己，朝着自己的理想一直努力下去吧！', 1, '2016-12-28 08:02:08', '2016-12-28 08:02:08'),
(38, 0, 41, 40, '组长这段时间辛苦啦，你真的很棒呢！在你的带领和统筹规划下我们组的大作业才能够这么顺利的完成，给你点赞！', 1, '2016-12-28 08:04:59', '2016-12-28 08:04:59'),
(39, 0, 41, 36, '有学习激情是好事啊，保持这种激情一直学下去肯定会有很大收获的，加油哦！', 1, '2016-12-28 08:10:33', '2016-12-28 08:10:33'),
(40, 0, 41, 35, '文笔真好，从你的文字中我仿佛看到内心深处最真实的那个你。不论在哪里，只要自己有一颗上进的心，就不会荒废。大学四年，加油！', 1, '2016-12-28 08:18:40', '2016-12-28 08:18:40'),
(41, 0, 41, 34, '身在课程那么多的互联网专业还能把实验室的作业完成的那么好可想而知你付出了多大的努力，付出总会有回报的，加油！', 1, '2016-12-28 08:22:48', '2016-12-28 08:22:48'),
(42, 0, 40, 34, '不忘初心，方得始终。努力、积极、坚持的人最帅了！', 1, '2016-12-28 08:36:44', '2016-12-28 08:36:44'),
(43, 0, 40, 36, '相互激励，一起努力，朝着目标前进~【击掌】', 1, '2016-12-28 08:39:34', '2016-12-28 08:39:34'),
(44, 0, 40, 40, '厉害我的大组长，不用想就知道你这段时间应该操碎了心，感谢你的付出，真的辛苦了！', 1, '2016-12-28 08:47:16', '2016-12-28 08:47:16'),
(45, 0, 40, 41, '今天晚上早点睡，不要再跟我讲又熬夜了，我也担心你猝死【滑稽脸】', 1, '2016-12-28 08:52:09', '2016-12-28 08:52:09'),
(46, 0, 40, 42, '想着评论，莫名想笑', 1, '2016-12-28 08:53:40', '2016-12-28 08:53:40'),
(47, 0, 40, 35, '曾看到过一段话：无论我走到哪里，那都是我该去的地方，无论你遇见谁，他都是你生命该出现的人，绝非偶然。每一种经历都是一笔人生财富。加油，很棒哦！', 1, '2016-12-28 09:01:33', '2016-12-28 09:01:33');

-- --------------------------------------------------------

--
-- 表的结构 `good`
--

CREATE TABLE `good` (
  `good_id` int(11) NOT NULL COMMENT '赞id',
  `gooder_id` int(11) NOT NULL COMMENT '赞者id',
  `good_blog_id` int(11) NOT NULL COMMENT '被赞博文id',
  `data_state` smallint(1) DEFAULT '1' COMMENT '数据状态： 1：显示 0：删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `good`
--

INSERT INTO `good` (`good_id`, `gooder_id`, `good_blog_id`, `data_state`, `create_at`, `update_at`) VALUES
(12, 37, 42, 1, '2016-12-28 06:34:39', '2016-12-28 06:34:39'),
(13, 37, 41, 1, '2016-12-28 06:36:08', '2016-12-28 06:36:08'),
(14, 37, 36, 1, '2016-12-28 06:37:46', '2016-12-28 06:37:46'),
(15, 37, 34, 1, '2016-12-28 06:38:16', '2016-12-28 06:38:16'),
(16, 36, 34, 1, '2016-12-28 06:42:35', '2016-12-28 06:42:35'),
(17, 36, 39, 1, '2016-12-28 07:02:00', '2016-12-28 07:02:00'),
(18, 36, 40, 1, '2016-12-28 07:06:04', '2016-12-28 07:06:13'),
(19, 36, 35, 1, '2016-12-28 07:07:32', '2016-12-28 07:07:32'),
(20, 41, 35, 1, '2016-12-28 08:16:24', '2016-12-28 08:16:24'),
(21, 41, 34, 1, '2016-12-28 08:18:55', '2016-12-28 08:18:55'),
(22, 41, 42, 1, '2016-12-28 08:22:56', '2016-12-28 08:22:56'),
(23, 41, 41, 1, '2016-12-28 08:23:03', '2016-12-28 08:23:03'),
(24, 41, 40, 1, '2016-12-28 08:23:10', '2016-12-28 08:23:10'),
(25, 41, 36, 1, '2016-12-28 08:23:18', '2016-12-28 08:23:18'),
(26, 40, 34, 1, '2016-12-28 08:31:16', '2016-12-28 08:31:16'),
(27, 40, 41, 1, '2016-12-28 08:53:57', '2016-12-28 08:53:57'),
(28, 40, 40, 1, '2016-12-28 08:54:05', '2016-12-28 08:54:05'),
(29, 40, 36, 1, '2016-12-28 08:54:16', '2016-12-28 08:54:16'),
(30, 40, 35, 1, '2016-12-28 08:54:28', '2016-12-28 08:54:28'),
(31, 17, 41, 1, '2016-12-28 15:14:54', '2016-12-28 15:14:54');

-- --------------------------------------------------------

--
-- 表的结构 `persons`
--

CREATE TABLE `persons` (
  `person_id` int(11) NOT NULL COMMENT '用户ID',
  `name` varchar(50) NOT NULL COMMENT '用户昵称',
  `telphone` varchar(20) NOT NULL COMMENT '手机号码（账号）',
  `password` varchar(50) NOT NULL COMMENT '用户密码',
  `QQ` varchar(20) NOT NULL COMMENT 'QQ号',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `accout_type` smallint(1) DEFAULT '0' COMMENT '账号类型：0：普通用户，1：管理员',
  `status` smallint(1) DEFAULT '1' COMMENT '用户状态： 1：显示 0：隐身',
  `data_state` smallint(1) DEFAULT '1' COMMENT '数据状态： 1：存在 0：删除',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据创建时间',
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `persons`
--

INSERT INTO `persons` (`person_id`, `name`, `telphone`, `password`, `QQ`, `email`, `accout_type`, `status`, `data_state`, `create_at`, `update_at`) VALUES
(40, '李骁', '13974838794', '8ddcff3a80f4189ca1c9d4d902c3c909', '891200551', '891200551@qq.com', 0, 1, 1, '2016-12-28 05:13:03', '2016-12-28 05:13:03'),
(41, '李雨璇', '18374986365', '8ddcff3a80f4189ca1c9d4d902c3c909', '543639176', '543639176@qq.com', 0, 1, 1, '2016-12-28 05:15:05', '2016-12-28 05:15:05'),
(17, '于越', '13975659747', '8ddcff3a80f4189ca1c9d4d902c3c909', '1123146105', '1123146105@qq.com', 1, 1, 1, '2016-12-17 08:58:50', '2016-12-25 13:05:57'),
(38, '黄垚', '18374815060', '8ddcff3a80f4189ca1c9d4d902c3c909', '1419471327', '1419471327@qq.com', 1, 1, 1, '2016-12-27 16:10:34', '2016-12-27 16:27:51'),
(36, '刘鲁南', '18229927943', '8ddcff3a80f4189ca1c9d4d902c3c909', '1908626143', '1908626143@qq.com', 1, 1, 1, '2016-12-27 11:40:37', '2016-12-27 16:26:01'),
(37, '毕瀚文', '15274417636', '8ddcff3a80f4189ca1c9d4d902c3c909', '1148985295', '1148985295@qq.com', 0, 1, 1, '2016-12-27 16:03:32', '2016-12-27 16:03:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `collect`
--
ALTER TABLE `collect`
  ADD PRIMARY KEY (`collect_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `good`
--
ALTER TABLE `good`
  ADD PRIMARY KEY (`good_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`person_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博文ID', AUTO_INCREMENT=43;
--
-- 使用表AUTO_INCREMENT `collect`
--
ALTER TABLE `collect`
  MODIFY `collect_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏ID', AUTO_INCREMENT=59;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID', AUTO_INCREMENT=48;
--
-- 使用表AUTO_INCREMENT `good`
--
ALTER TABLE `good`
  MODIFY `good_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '赞id', AUTO_INCREMENT=32;
--
-- 使用表AUTO_INCREMENT `persons`
--
ALTER TABLE `persons`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID', AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
