/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : history

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 21/04/2022 17:51:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news_
-- ----------------------------
DROP TABLE IF EXISTS `news_`;
CREATE TABLE `news_`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻标题',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻类型',
  `content` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻内容',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新闻作者',
  `date` date NULL DEFAULT NULL COMMENT '时间',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_
-- ----------------------------
INSERT INTO `news_` VALUES (11, '“只争朝夕，不负韶华” 习近平新年贺词展现中国“实干”姿态', 'gzdt', '新华社北京12月31日电 国务院总理李克强日前签署国务院令，公布《中华人民共和国外商投资法实施条例》(以下简称《实施条例》)，自2020年1月1日起施行。\r\n党中央、国务院高度重视《中华人民共和国外商投资法》(以下简称外商投资法)实施，明确要求制定配套法规，细化法律确定的主要制度，形成可操作的具体规则，持续优化外商投资环境。作为外商投资法的配套法规，《实施条例》严格贯彻外商投资法的立法原则和宗旨，更加突出促进和保护外商投资的主基调，增强制度的可操作性，保障法律有效实施。\r\n一是鼓励和促进外商投资。《实施条例》提出要保护外商投资合法权益，规范外商投资管理，持续优化外商投资环境，推进更高水平对外开放。同时，对中国自然人与外国投资者共同投资、外商投资准入负面清单的制定和调整程序、外商投资企业在中国境内投资的法律适用等问题作了明确规定。\r\n二是细化外商投资促进具体措施。《实施条例》规定外商投资企业平等适用国家支持企业发展的有关政策，依法平等参与标准制定、政府采购活动；建立健全外商投资服务体系。\r\n三是加强外商投资保护力度。《实施条例》对外国投资者投资的征收补偿、禁止利用行政手段强制外国投资者和外商投资企业转让技术、保护商业秘密、外商投资企业投诉工作机制等作了细化，明确外商投资法第二十五条所称政策承诺的具体内涵和要求。\r\n四是规范外商投资管理。《实施条例》明确外商投资准入负面清单的落实机制，细化外商投资企业登记注册、外商投资信息报告制度。\r\n此外，《实施条例》细化了现有外商投资企业组织形式等有关的过渡期安排，保持当事人权利义务的稳定。明确了港澳台投资的法律适用，保持港澳台投资政策的连续性稳定性。并对政府和有关部门及其工作人员违反本条例的行为规定了相应的法律责任。\r\n《实施条例》施行后，《中华人民共和国中外合资经营企业法实施条例》、《中外合资经营企业合营期限暂行规定》、《中华人民共和国外资企业法实施细则》、《中华人民共和国中外合作经营企业法实施细则》同时废止。\r\n', '陈子涵', '2020-01-01', 'inner_left_content.jpg');
INSERT INTO `news_` VALUES (12, '李克强签署国务院令 公布《中华人民共和国外商投资法实施条例》', 'gzdt', '新华社北京12月31日电 国务院总理李克强日前签署国务院令，公布《中华人民共和国外商投资法实施条例》(以下简称《实施条例》)，自2020年1月1日起施行。\r\n\r\n　　党中央、国务院高度重视《中华人民共和国外商投资法》(以下简称外商投资法)实施，明确要求制定配套法规，细化法律确定的主要制度，形成可操作的具体规则，持续优化外商投资环境。作为外商投资法的配套法规，《实施条例》严格贯彻外商投资法的立法原则和宗旨，更加突出促进和保护外商投资的主基调，增强制度的可操作性，保障法律有效实施。\r\n\r\n　　一是鼓励和促进外商投资。《实施条例》提出要保护外商投资合法权益，规范外商投资管理，持续优化外商投资环境，推进更高水平对外开放。同时，对中国自然人与外国投资者共同投资、外商投资准入负面清单的制定和调整程序、外商投资企业在中国境内投资的法律适用等问题作了明确规定。\r\n\r\n　　二是细化外商投资促进具体措施。《实施条例》规定外商投资企业平等适用国家支持企业发展的有关政策，依法平等参与标准制定、政府采购活动；建立健全外商投资服务体系。\r\n\r\n　　三是加强外商投资保护力度。《实施条例》对外国投资者投资的征收补偿、禁止利用行政手段强制外国投资者和外商投资企业转让技术、保护商业秘密、外商投资企业投诉工作机制等作了细化，明确外商投资法第二十五条所称政策承诺的具体内涵和要求。\r\n\r\n　　四是规范外商投资管理。《实施条例》明确外商投资准入负面清单的落实机制，细化外商投资企业登记注册、外商投资信息报告制度。\r\n\r\n　　此外，《实施条例》细化了现有外商投资企业组织形式等有关的过渡期安排，保持当事人权利义务的稳定。明确了港澳台投资的法律适用，保持港澳台投资政策的连续性稳定性。并对政府和有关部门及其工作人员违反本条例的行为规定了相应的法律责任。\r\n\r\n　　《实施条例》施行后，《中华人民共和国中外合资经营企业法实施条例》、《中外合资经营企业合营期限暂行规定》、《中华人民共和国外资企业法实施细则》、《中华人民共和国中外合作经营企业法实施细则》同时废止。', '陈子涵', '2020-01-01', 'inner_left_content.jpg');
INSERT INTO `news_` VALUES (13, '交通部：1月1日起全国487个高速省界收费站全部撤销 助力节能减排，降本增效          ', 'gzdt', '   据央视新闻报道 当地时间2019年12月31号，美国总统特朗普通过推特发文称：伊朗对发生在伊拉克首都巴格达的袭击美驻伊使馆事件负有全责，伊朗将为此付出沉重代价。特朗普表示：这不是警告，而是威胁！\r\n\r\n   国防部长马克·埃斯珀：美国将派出特别部队保护美驻伊使馆\r\n\r\n   当地时间2019年12月31日，美国国防部长马克·埃斯珀在一份书面声明中称，鉴于在伊拉克首都巴格达爆发的针对美国驻伊拉克使馆的抗议示威活动，美军已派出特别部队前往保护美国驻伊拉克使馆的安全。\r\n\r\n   埃斯珀强调希望伊拉克政府全力保护美在伊使馆人员安全；同时，美军已经出动两架阿帕奇直升机在美驻伊拉克使馆上空盘旋，据美国有线电视新闻网报道，此次美军特别部队将从科威特派往伊拉克；另有美国官员表示，另一路位于美国境内的特别部队也已准备好即刻派往伊拉克首都巴格达。', '陈子涵', '2020-01-01', 'inner_left_content.jpg');
INSERT INTO `news_` VALUES (21, '李克强签署国务院令 公布《中华人民共和国外商投资法实施条例》', 'xxgg', '新华社北京12月31日电 国务院总理李克强日前签署国务院令，公布《中华人民共和国外商投资法实施条例》(以下简称《实施条例》)，自2020年1月1日起施行。\r\n\r\n　　党中央、国务院高度重视《中华人民共和国外商投资法》(以下简称外商投资法)实施，明确要求制定配套法规，细化法律确定的主要制度，形成可操作的具体规则，持续优化外商投资环境。作为外商投资法的配套法规，《实施条例》严格贯彻外商投资法的立法原则和宗旨，更加突出促进和保护外商投资的主基调，增强制度的可操作性，保障法律有效实施。\r\n\r\n　　一是鼓励和促进外商投资。《实施条例》提出要保护外商投资合法权益，规范外商投资管理，持续优化外商投资环境，推进更高水平对外开放。同时，对中国自然人与外国投资者共同投资、外商投资准入负面清单的制定和调整程序、外商投资企业在中国境内投资的法律适用等问题作了明确规定。\r\n\r\n　　二是细化外商投资促进具体措施。《实施条例》规定外商投资企业平等适用国家支持企业发展的有关政策，依法平等参与标准制定、政府采购活动；建立健全外商投资服务体系。\r\n\r\n　　三是加强外商投资保护力度。《实施条例》对外国投资者投资的征收补偿、禁止利用行政手段强制外国投资者和外商投资企业转让技术、保护商业秘密、外商投资企业投诉工作机制等作了细化，明确外商投资法第二十五条所称政策承诺的具体内涵和要求。\r\n\r\n　　四是规范外商投资管理。《实施条例》明确外商投资准入负面清单的落实机制，细化外商投资企业登记注册、外商投资信息报告制度。\r\n\r\n　　此外，《实施条例》细化了现有外商投资企业组织形式等有关的过渡期安排，保持当事人权利义务的稳定。明确了港澳台投资的法律适用，保持港澳台投资政策的连续性稳定性。并对政府和有关部门及其工作人员违反本条例的行为规定了相应的法律责任。\r\n\r\n　　《实施条例》施行后，《中华人民共和国中外合资经营企业法实施条例》、《中外合资经营企业合营期限暂行规定》、《中华人民共和国外资企业法实施细则》、《中华人民共和国中外合作经营企业法实施细则》同时废止。', '陈子涵', '2020-01-01', 'inner_left_content.jpg');
INSERT INTO `news_` VALUES (22, '特朗普：伊朗将付出沉重代价', 'xxgg', '   据央视新闻报道 当地时间2019年12月31号，美国总统特朗普通过推特发文称：伊朗对发生在伊拉克首都巴格达的袭击美驻伊使馆事件负有全责，伊朗将为此付出沉重代价。特朗普表示：这不是警告，而是威胁！\r\n\r\n   国防部长马克·埃斯珀：美国将派出特别部队保护美驻伊使馆\r\n\r\n   当地时间2019年12月31日，美国国防部长马克·埃斯珀在一份书面声明中称，鉴于在伊拉克首都巴格达爆发的针对美国驻伊拉克使馆的抗议示威活动，美军已派出特别部队前往保护美国驻伊拉克使馆的安全。\r\n\r\n   埃斯珀强调希望伊拉克政府全力保护美在伊使馆人员安全；同时，美军已经出动两架阿帕奇直升机在美驻伊拉克使馆上空盘旋，据美国有线电视新闻网报道，此次美军特别部队将从科威特派往伊拉克；另有美国官员表示，另一路位于美国境内的特别部队也已准备好即刻派往伊拉克首都巴格达。', '陈子涵', '2020-01-01', 'inner_left_content.jpg');
INSERT INTO `news_` VALUES (23, '“只争朝夕，不负韶华” 习近平新年贺词展现中国“实干”姿态', 'xxgg', '(近观中国)“只争朝夕，不负韶华” 习近平新年贺词展现中国“实干”姿态\r\n\r\n　　中新社北京1月1日电 题：“只争朝夕，不负韶华” 习近平新年贺词展现中国“实干”姿态\r\n\r\n　　中新社记者 张子扬\r\n\r\n　　2020年新年前夕，中国国家主席习近平在北京第七次发表新年贺词。\r\n\r\n　　有内地学者注意到，习近平在贺词中重温2019年中国各项事业取得的成就，并透过“用汗水浇灌收获，以实干笃定前行”的朴素表达，为中国新的一年标定前行指南、谋划蓝图。而“只争朝夕，不负韶华”所释放出的实干姿态，更表明面对当下世界变局时的中国态度。\r\n\r\n　　从内至外：“高质量发展”的两个维度\r\n\r\n　　回顾2019年中国取得的各项成绩，习近平肯定因“高质量发展”所带来的变化。从GDP数字的提升、到三大攻坚战取得关键进展，再到科技领域实现突破等，习近平说，“这些成就凝结着新时代奋斗者的心血和汗水，彰显了不同凡响的中国风采、中国力量”。\r\n\r\n　　北京师范大学一带一路学院执行院长胡必亮认为，从国内、国际两个维度来观察，推动高质量发展，不仅融入国家经济、民生、科技、绿色发展等各个层面，其理念亦厚植于“我们朋友遍天下”“共建‘一带一路’”的高质量外交互动中。\r\n\r\n　　胡必亮说，推动高质量发展，作为当前和今后一个时期既定的发展思路，回顾过去总结经验指引前行，将给未来留出更多腾挪空间。\r\n\r\n　　与之同时，外界注意到，“改革开放”一词，是习近平历年的新年贺词中的一大关键词。比如，习近平在二〇一九年新年贺词中说，我们改革的脚步不会停滞，开放的大门只会越开越大。\r\n\r\n　　过去一年，从减税降费总额超过2万亿元人民币、个人所得税起征点提高，到国防和军队改革，举办多场主场外交活动……专家认为，最新一次贺词中所提到的改革开放举措，既汇聚于关乎人民的福祉中，不断催生发展活力，亦向世界展示出一个文明、开放、包容、进取的中国。\r\n\r\n　　中央党校教授戴焰军说，梳理此次新年贺词不难发现，无论是“高质量发展”还是“改革开放”，均向外界传递出一个明确信号：过去取得的成就用汗水浇灌而来，中国的未来依然不能有歇歇脚的念头。越是取得成绩越要有居安思危的忧患，从撸起袖子加油干，到“只争朝夕，不负韶华”，平实语句中，透出中国最高领导人的实干精神。', '陈子涵', '2020-01-01', 'inner_left_content.jpg');
INSERT INTO `news_` VALUES (51, '兴学边陲 建校肇始（1948.4—1950.1）', 'shgc', '1948年4月17日，伊犁、塔城、阿山三区革命政府改建伊犁民族中学工作会议在伊宁召开，新疆省政府委员兼教育厅长赛福鼎·艾则孜主持会议，会议决定将伊犁民族中学改建成为省立伊犁专科学校（校址在在现伊宁市七和伊犁州体委）。', '陈子涵', '2022-04-06', 'shgc-1.png');
INSERT INTO `news_` VALUES (52, '院系调整 根植师范（1950.2—1954.12）', 'shgc', '1.专业转出 1950年2月，学校的大部分专业转入新疆学院（新疆大学前身），学校只保留了师范专业。共有395名学生归并到新疆学院，留在伊宁市15个班级共424名学生。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.一分为二 1953年夏，学校分为伊犁师范学校和男子高中。其中师范学校学制3年，有13个教学班。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3.建设新址 1954年开始建设新校址，动工兴建教学楼（现为校史馆所在地），建筑面积2600平方米。', '陈子涵', '2022-04-06', 'shgc-2.png');
INSERT INTO `news_` VALUES (53, '十年发展 树人成材（1955.1—1966.5）', 'shgc', '1.迁入新址1955年4月新疆省人民政府拨款19.6万元，修建学生宿舍（现思想政治教育基地）、餐厅等基础设施。9月，伊犁师范学校搬入新校址（现校址）办学。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.学校更名1959年7月6日，经自治区党委批准，伊犁师范学校改名为伊犁第一师范学校，主要培养少数民族学生。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3.成立“二师”成立伊犁第二师范学校，主要招收汉族学生，学制3年。伊犁区党委将伊犁第二师范学校列为重点学校。1959年伊犁第二师范学校即从湖北招生。当年学校开设七个班级，主要分为初师班、中师班、实训班、汉语班等。同年，上级拨款3万元兴建了600平米学生宿舍。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp4.重点学校1961年，伊犁州（61）教学行字39号文件，伊犁第一师范学校被确定为自治区重点中等师范学校。同年伊犁第一师范学校在第二附属小学重点试行哈萨克语言新文字教学。（张家瑞任校长，刘兴鄂兼任教务主任。）', '陈子涵', '2022-04-06', 'shgc-3.png');
INSERT INTO `news_` VALUES (54, '文革浩劫 曲折办学（1966.6—1976.12）', 'shgc', '1.“文革”十年1966年6月19日，伊犁第一师范学校维语言、哈语言专修班学生开始停课“闹革命”，自此“文化大革命”在学校展开，学校停课，招生停顿，教育工作受到严重干扰破坏。1970年3月伊犁第一师范学校根据战备疏散通知，搬迁至伊宁县十月公社第二师范学校办学。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.合二为一1971年2月根据伊州革委会（71）6号，伊犁第一师范学校、伊犁第二师范学校合并，改成伊犁师范学校，职工数为118人。同年三月恢复招生，未经入学考试招收1年制培训班学员400余人。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3.重回旧址1973年7月3日伊犁州决定把伊犁师范学校的老校区（现址）还给伊犁师范学校，部分教工从伊宁县十月公社搬回。学校实行两地办学，校本部设在伊宁县十月公社（现伊宁县喀什乡），分部在伊宁市（现址）。\r\n', '陈子涵', '2022-04-06', 'shgc-4.png');
INSERT INTO `news_` VALUES (55, '拨乱反正 恢复提升（1977.6—1980.4）', 'shgc', '1.拨乱反正文革浩劫结束后，学校开始了一系列拨乱反正工作，1977年学校在伊宁县十月公社办学的师生搬回现址。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.恢复高考1970年恢复高考制度，学校通过高考录取中专生380人，专业分为语文、数学、体育、音乐、实验。1978年学校通过高考首次招收中文、数学专业三年制大专班，共招收大专生216人，中专生204人。1979年招收大专生151人，幼师中专80人。\r\n', '陈子涵', '2022-04-06', 'shgc-5.png');
INSERT INTO `news_` VALUES (56, '升格学院 加快发展（1980.5—2018.11）', 'shgc', '1. 升格学院1980年5月7日教育部（1980）教计字198号文，国务院批准以伊犁师范学校为基础成立伊犁师范学院，学制四年，办学规模为1200人，设置中文、外语、体育、数学、物理、化学等专业，由自治区领导。学院停招中专生，原有中专班毕业为止，原大专班学制不变。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.学报创刊1982年《伊犁师范学院学报》创刊。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3.两校合并2003年11月25日，经自治区人民政府批准，伊犁州教育学院整体并入伊犁师范学院，成立了奎屯校区。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp4.绿色大学2006年获得自治区首批绿色大学称号。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp5.新校区建设2011年，成立新校区建设指挥部。2012年，完成《2012-2020年校园建设规划》编制及评审工作，完成新增校区总体规划修编工作。\r\n', '陈子涵', '2022-04-06', 'shgc-6.png');
INSERT INTO `news_` VALUES (57, '更名大学  全面发展（2018.12— ）', 'shgc', '1.更名大学2018年11月，学校更名伊犁师范大学顺利通过教育部审核公示。12月28日，学校举办庆祝建校70周年活动暨伊犁师范大学揭牌仪式。自治区党委教育工委常务副书记韩军，伊犁州党委常委、宣传部长、教育工委书记高天山出席座谈会，学校领导、校友代表、在伊宁市工作和生活的离退休老领导、老专家以及部分在校专家教授和师生代表共同参加座谈。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.2019年教学用地：学校占地面积124.69万平方米，绿化用地面积为71.60万平方米，学校总建筑面积为35.025万平方米。学校现有教学行政用房面积（教学科研及辅助用房+行政办公用房）共14.93万平方米，其中教室面积7.99万平方米，实验室及实习场所面积4.56万平方米。拥有学生食堂面积为2.87万平方米，学生宿舍面积为10.52万平方米。新校区68.76万平方米办学用地，立项建设文科教学楼和学生食堂，建筑面积2.54万平米。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp教学用房：学校现有教室248间，其中多媒体教室204间，教学计算机机房（含语音室）10间，微格教室10间。近两年，新增教室138间，改造55间。可满足不同类型教学班课堂教学和学生自习要求。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp体育设施：学校运动场馆总面积4.64万平方米，其中室外运动场4个，面积达到41000平方米，综合体育馆1栋，面积5440平方米，拥有田径、足球、篮球、排球、网球、乒乓球、羽毛球等多个项目的专业化训练比赛场地，基本满足教学、运动队训练、学生体育锻炼等需要。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp教学设备：资产总值13562.31万元，生均教学科研仪器设备价值0.97万元。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp图书馆：总面积达14829m2，拥有纸质图书904095册，生均纸质图书64.80册；拥有电子图书438295册，数据库6个。', '陈子涵', '2022-04-06', 'shgc-7.png');
INSERT INTO `news_` VALUES (58, '陆一民', 'rwcq', '男，汉族，1921年6月出生于河北省安平县，中国共产党优秀党员，1980年任伊犁师范学院党委书记，为伊犁师范学院的组建、发展和繁荣做出了重要的贡献。1984年光荣离休。2000年2月11日逝世。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1938年抗日烽火燃起,17岁的陆一民同志毅然投笔从戎，参加了八路军，走上了抗击日本帝国主义，争取民族解放的道路。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1939年加入中国共产党。在革命军队中，他从一名普通战士逐步成长为军事指挥员和思想政治工作的领导干部，历任班长、排长连指导员和营教导员，转战于晋冀鲁豫，直至抗战胜利。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1943年，陆一民同志所在部队奉命返回映甘宁边区，开展大生产运动。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1947年参加了保卫党中夹、保卫毛主席的延安保卫战。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1949年，他随部队进军大西北，为新疆的和平解放做出了贡献。期间陆一民同志受部队领导的派遣，任原新疆起义部队骑兵第七师21团政治部副主任。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1950年，陆一民同志所在部队进驻伊犁。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1952年3月，响应党的号召，转业地方，任中共精河县委书记，进行建党建政工作。\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1954年任博尔塔拉自治州党委秘书长兼党委宣传部部长<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1956年秋到西安中级党校学习<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1957年调伊犁州人委文教处，先后任副处长、处长，并到中央高级党校培训学习。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp“文革”期间，他坚决抵制林彪、“四人帮”两个反革命集团的倒行逆施，受到冲击。虽然身心都受到很大的摧残，但他从未对党的信念产生过动摇，始终保持一个共产党员的高风亮节。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1973年到新源县组织筹建伊犁铁矿，先后任铁矿和钢铁厂党委书记。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp十一届三中全会以后，陆一民同志重返教育战线，调任伊犁州教育局局长。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1980年任伊犁师范学院党委书记，为伊犁师范学院的组建、发展和繁荣做出了重要的贡献。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1984年光荣离职休养。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp他工作认真负责，埋头苦干，能够克服各种困难，善于开创新局面；与同志相处襟怀坦白，刚正不阿，无私无畏；他生活艰苦朴素，克已奉公，受到同志们广泛的尊敬与好评，在伊犁地州县市教育系统的师生员工中享有较高的威望。他的一生是坚持全心全意为人民服务宗旨的一生，是为党的事业艰苦奋斗的一生，是为党的教育文化事业勤恳工作的一生，是一身正气，两袖清风、坚持原则、刚正不阿的一生。他的高风亮节为我们树立了学习的楷模！<br>\r\n', '陈子涵', '2022-04-06', 'rw-1.jpg');
INSERT INTO `news_` VALUES (59, '陈明——一枝红梅送春华', 'rwcq', '女，汉族，1928年2月出生，四川省安岳县人，中共党员，伊犁师范学院哲学副教授，曾任哲学教研室主任、马列教研室主任等职。2003年1月去世。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp她是一位老革命、老战士、优秀的人民教师，为我国民族解放、国家独立、保卫和平、边疆建设、新疆教育事业奋斗一生，做出了突出的贡献。也为我校升格高等院校的筹建初建、高等教育事业发展建设做出贡献。<br>\r\n', '陈子涵', '2022-04-06', 'rw-2.png');
INSERT INTO `news_` VALUES (60, '尹志礼——不改初心志，践行60年', 'rwcq', '男，汉族。1932年生于江西永新县。1949年前在家读私塾。1949年初，考入县城私立四维中学。1951年9月上高中。1952年春在中小学校支教一学期，9月份到吉安师范插班读高中。1954年9月就读于北京师范大学中文系。1980年伊犁师范学校改成伊犁师范学院，被学院党委任命为中文系负责人之一，1985年晋升为学校第一批副教授。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp“我发誓，到最边远、最艰苦的地方去当一辈子人民教师，工作中不请一天事假，不误一节课，今生不向组织提个人的任何要求......”\r\n', '陈子涵', '2022-04-06', 'rw-3.png');
INSERT INTO `news_` VALUES (61, '阿孜也夫 ——全国首届民族团结先进个人', 'rwcq', '男，乌兹别克族，1932年7月出生，1956年加入中国共产党。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1951年2月到1952年9月在新疆民族学院（现新疆大学）学习，1952年9月到1957年7月北京师范大学学习，1957年毕业回原新疆民族学院任教，1959年到1962年任新疆大学化学系副主任，1962年到1974年任新疆大学化学系主任，1960年到1966年期间任化学化工学会副理事会，1974年12月到1980年10月在伊犁机械化学校任教务处负责人，1980年11月到1992年12月任伊犁师范学院化学系主任，1993年1月退休。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp荣誉奖励：1987年被评为新疆维吾尔自治区民族团结先进个人表彰；1988年4月被评为“全国民族团结先进个人”，光荣出席国务院在北京召开的全国首届民族团结先进个人表彰大会，并被授予“全国首届民族团结先进个人”荣耀称号；1991年10月被新疆维吾尔自治区授予“自治区普通高校优秀思想工作者”荣誉称号；多次获得 “伊犁师范学院优秀共产党员”荣誉称号。\r\n', '陈子涵', '2022-04-06', 'rw-7.png');
INSERT INTO `news_` VALUES (62, '易延坚 ——爱生如子铸师魂', 'rwcq', '男，汉族，1946年7月生，湖南人，中共党员，教授。主讲中学语文课程与教学论、语文教材分析等课程，曾担任中文系学生党支部书记，、教师支部书记，长期担任学生的政治辅导员。1954．7-1962年3月在湖南洪江市鼎新街学校上学。1962．7-1964年7月在新疆农四师子女学校上学。1964．9-1994年11月在新疆农四师64团中学教师。1994．11-2007年7月在新疆伊犁师范学院任教。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp获奖情况：2004年9月荣获伊犁哈萨克自治州师德标兵荣誉称号，2006年荣获伊犁师范学院共产党员标兵称号，2006年荣获伊犁哈萨克自治州优秀共产党员，2007年荣获伊宁市民族团结先进个人，2007年荣获伊犁师范学院优秀共产党员，2007年荣获新疆维吾尔自治区优秀共产党员，2008年荣获全国优秀教师。\r\n', '陈子涵', '2022-04-06', '075877rw-5.png');
INSERT INTO `news_` VALUES (63, '孟毅 ——甘为人梯的领路人', 'rwcq', '男，汉族。1954年8月生人。中共党员、研究生、教授、硕士生导师。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1975年07月哈萨克语言专业毕业留校。在本校从教42年，2017年08月光荣退休。\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp国家教育部学位中心专家、伊犁州翻译家协会副会长。曾任学校学术委员会成员。中语学院研究生“产学研基地”学术负责人；学校哈萨克语言翻译研究所发起人、首任所长。是40多年前只由几名教师组成的语言教研室发展到预科部、中国语言系、继而发展成为今天的中国语言学院的见证人、主要建设者。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp从教40余年来，坚持“用责任育人，用良心教书”的教育理念，在三尺讲台上践行“品正”强化“学实”的教育思想和理念，创立了“五个一工程”“五个得模式”“学案教学法”“语言技能训练法”和“特长生导师制”等一系列教育实践法。教学中，他“关心学生生命与成长”“成就学生是教师的天职”的育人思想影响了一届又一届莘莘学子，帮助他们健康成长、成才成为社会主义建设事业的接班人和建设者。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp荣誉奖励：曾荣获自治区“优秀教师”（2014年）、自治区首届“四好教师”（2015年）、自治州“民族团结先进个人”。多次荣获自治州及学校“优秀共产党员标兵”“优秀共产党员”等称号。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp学术成果：四十余年来，他先后承担几十门本、硕课程的教学任务，成功完成教育部特色课程和学校重点课程建设任务。出版多部专著、工具书和译著，编著多部教材，发表并宣读百余篇学术论文。2010年在美国哈佛大学的世界语言学论坛上宣读的哈萨克语研究成果获得了专家学者的认同和好评。他主持完成和参与十余项省部级哲社课题研究任务。他主持的研究生“产学研”基地与语言研究所训练平台为研究生提升学术技能发挥了重要的作用。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp代表著作：<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp著作：《哈萨克民族多元文化研究》<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp参编：《汉哈俄语言学术语词典》<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp翻译：《哈萨克语言史》《伊沙木·库尔班笑话（恰克恰克）研究》\r\n', '陈子涵', '2022-04-06', '1008256rw-6.png');
INSERT INTO `news_` VALUES (85, '李克强签署国务院令 公布《中华人民共和国外商投资法实施条例》', 'xxgg', '新华社北京12月31日电 国务院总理李克强日前签署国务院令，公布《中华人民共和国外商投资法实施条例》(以下简称《实施条例》)，自2020年1月1日起施行。\r\n\r\n　　党中央、国务院高度重视《中华人民共和国外商投资法》(以下简称外商投资法)实施，明确要求制定配套法规，细化法律确定的主要制度，形成可操作的具体规则，持续优化外商投资环境。作为外商投资法的配套法规，《实施条例》严格贯彻外商投资法的立法原则和宗旨，更加突出促进和保护外商投资的主基调，增强制度的可操作性，保障法律有效实施。\r\n\r\n　　一是鼓励和促进外商投资。《实施条例》提出要保护外商投资合法权益，规范外商投资管理，持续优化外商投资环境，推进更高水平对外开放。同时，对中国自然人与外国投资者共同投资、外商投资准入负面清单的制定和调整程序、外商投资企业在中国境内投资的法律适用等问题作了明确规定。\r\n\r\n　　二是细化外商投资促进具体措施。《实施条例》规定外商投资企业平等适用国家支持企业发展的有关政策，依法平等参与标准制定、政府采购活动；建立健全外商投资服务体系。\r\n\r\n　　三是加强外商投资保护力度。《实施条例》对外国投资者投资的征收补偿、禁止利用行政手段强制外国投资者和外商投资企业转让技术、保护商业秘密、外商投资企业投诉工作机制等作了细化，明确外商投资法第二十五条所称政策承诺的具体内涵和要求。\r\n\r\n　　四是规范外商投资管理。《实施条例》明确外商投资准入负面清单的落实机制，细化外商投资企业登记注册、外商投资信息报告制度。\r\n\r\n　　此外，《实施条例》细化了现有外商投资企业组织形式等有关的过渡期安排，保持当事人权利义务的稳定。明确了港澳台投资的法律适用，保持港澳台投资政策的连续性稳定性。并对政府和有关部门及其工作人员违反本条例的行为规定了相应的法律责任。\r\n\r\n　　《实施条例》施行后，《中华人民共和国中外合资经营企业法实施条例》、《中外合资经营企业合营期限暂行规定》、《中华人民共和国外资企业法实施细则》、《中华人民共和国中外合作经营企业法实施细则》同时废止。', '陈子涵', '2020-01-01', 'inner_left_content.jpg');
INSERT INTO `news_` VALUES (86, '李克强签署国务院令 公布《中华人民共和国外商投资法实施条例》', 'gzdt', '新华社北京12月31日电 国务院总理李克强日前签署国务院令，公布《中华人民共和国外商投资法实施条例》(以下简称《实施条例》)，自2020年1月1日起施行。\r\n\r\n　　党中央、国务院高度重视《中华人民共和国外商投资法》(以下简称外商投资法)实施，明确要求制定配套法规，细化法律确定的主要制度，形成可操作的具体规则，持续优化外商投资环境。作为外商投资法的配套法规，《实施条例》严格贯彻外商投资法的立法原则和宗旨，更加突出促进和保护外商投资的主基调，增强制度的可操作性，保障法律有效实施。\r\n\r\n　　一是鼓励和促进外商投资。《实施条例》提出要保护外商投资合法权益，规范外商投资管理，持续优化外商投资环境，推进更高水平对外开放。同时，对中国自然人与外国投资者共同投资、外商投资准入负面清单的制定和调整程序、外商投资企业在中国境内投资的法律适用等问题作了明确规定。\r\n\r\n　　二是细化外商投资促进具体措施。《实施条例》规定外商投资企业平等适用国家支持企业发展的有关政策，依法平等参与标准制定、政府采购活动；建立健全外商投资服务体系。\r\n\r\n　　三是加强外商投资保护力度。《实施条例》对外国投资者投资的征收补偿、禁止利用行政手段强制外国投资者和外商投资企业转让技术、保护商业秘密、外商投资企业投诉工作机制等作了细化，明确外商投资法第二十五条所称政策承诺的具体内涵和要求。\r\n\r\n　　四是规范外商投资管理。《实施条例》明确外商投资准入负面清单的落实机制，细化外商投资企业登记注册、外商投资信息报告制度。\r\n\r\n　　此外，《实施条例》细化了现有外商投资企业组织形式等有关的过渡期安排，保持当事人权利义务的稳定。明确了港澳台投资的法律适用，保持港澳台投资政策的连续性稳定性。并对政府和有关部门及其工作人员违反本条例的行为规定了相应的法律责任。\r\n\r\n　　《实施条例》施行后，《中华人民共和国中外合资经营企业法实施条例》、《中外合资经营企业合营期限暂行规定》、《中华人民共和国外资企业法实施细则》、《中华人民共和国中外合作经营企业法实施细则》同时废止。', '陈子涵', '2020-01-01', 'inner_left_content.jpg');
INSERT INTO `news_` VALUES (87, '吴孝成——桃李满天笑报春', 'rwcq', '男，汉族，中共党员，祖籍安徽金寨，1941年出生于新疆哈密市。大学本科学历，教授、硕士研究生导师。1964年7月毕业于新疆大学中文系汉语言文学专业，1964年9月-1981年9月在伊宁市第六中学任语文教师，1981年9月来到伊犁师范学院任教，1993年10月-1996年4月期间任伊犁师范学院党委副书记、纪律检查委员会书记，1996年4月-2002年7月担任伊犁师范学院院长、党委副书记，2004年退休，2012年9月至今，任伊犁师范学院研究生教育督导。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp曾任新疆唐加勒克研究会会长、新疆鲁迅研究会副会长、《伊犁师范学院学报》编委及“哈萨克文化研究”栏目主持人等学术职务。现为新疆作家协会会员、新疆写作学会会员、伊犁州专家顾问团成员。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp研究领域：新疆少数民族文学研究<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp荣誉奖励：1987年获伊犁州优秀教师称号，1989年获自治区优秀教师称号，1997年获自治区优秀民主管理工作者称号，2003年获自治区优秀教学成果三等奖。1985年以来多次被评为伊犁师范学院优秀教师、优秀党员，多次获学院科学报告会一、二、三等奖。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp学术成果：出版专著8部，发表论文与文艺短论200余篇，主编了学校内部面向少数民族学生的教材7部。新疆文艺批评界有一定影响的文学评论家，文学评论成果在《新疆当代多民族文学史》中有专题介绍。<br>\r\n&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp代表作品：《20世纪哈萨克文学概观》《多元文化语境中的西北多民族文学》《唐加勒克诗选》等\r\n\r\n', '陈子涵', '2022-04-20', '0835405rw-4.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `power` int(10) NULL DEFAULT 1 COMMENT '0为管理员 1为普通用户',
  PRIMARY KEY (`id`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'a', 'a', 0);
INSERT INTO `user` VALUES (11, 'admin', 'admin', 0);
INSERT INTO `user` VALUES (12, 'czh', '123', 1);

SET FOREIGN_KEY_CHECKS = 1;