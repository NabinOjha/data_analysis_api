# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def import_csv_to_table()
    sql = "
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Quatz', 'charted', '894-879-9864', 'China', 'dstrond0@geocities.jp', 82, 10.43, '2020-01-11', 3, '2019-12-10', '2020-01-14');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Oyoyo', 'charted', '202-263-7332', 'China', 'kmorrison1@yellowpages.com', 11, 12.46, '2020-10-02', 11, '2020-10-01', '2019-12-28');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Edgeclub', 'charted', '133-678-5178', 'Indonesia', 'aatthowe2@scribd.com', 85, 74.71, '2020-10-13', 8, '2019-12-19', '2020-03-13');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Roombo', 'charted', '365-924-5484', 'Indonesia', 'belcocks3@dell.com', 25, 87.65, '2020-07-25', 15, '2020-08-13', '2020-07-17');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Feedfish', 'charted', '699-286-5551', 'Poland', 'ncappineer4@economist.com', 72, 63.28, '2020-01-01', 17, '2020-04-12', '2020-07-25');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Thoughtbeat', 'charted', '889-592-8648', 'Peru', 'lleithgoe5@latimes.com', 65, 90.03, '2020-06-02', 18, '2020-09-25', '2020-06-04');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Riffpedia', 'charted', '375-678-4707', 'Russia', 'vweyman6@pen.io', 32, 25.24, '2020-11-26', 20, '2020-07-31', '2020-05-27');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Mydo', 'charted', '179-902-0086', 'Brazil', 'scecchi7@xinhuanet.com', 68, 36.12, '2020-01-02', 3, '2020-02-22', '2020-09-08');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Feedspan', 'charted', '195-133-7092', 'France', 'rlemmertz8@wikispaces.com', 57, 91.44, '2020-08-15', 10, '2020-11-20', '2020-12-03');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Fliptune', 'charted', '688-818-1108', 'Palestinian Territory', 'osommerscales9@youtube.com', 74, 66.55, '2019-12-25', 20, '2020-11-19', '2020-05-05');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Oyonder', 'charted', '282-632-1716', 'China', 'mtrebya@army.mil', 25, 89.23, '2020-06-22', 19, '2020-05-27', '2020-05-12');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Chatterpoint', 'charted', '866-572-4418', 'China', 'wcleverleyb@sitemeter.com', 1, 74.67, '2020-07-31', 4, '2020-01-11', '2020-05-20');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Dabvine', 'charted', '729-956-2331', 'Portugal', 'bschettinic@nyu.edu', 22, 43.12, '2020-02-06', 13, '2020-01-10', '2020-09-02');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Edgeclub', 'charted', '349-888-5634', 'Philippines', 'promand@wikispaces.com', 29, 94.95, '2020-11-01', 11, '2020-04-11', '2020-03-08');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Brainlounge', 'charted', '930-561-4999', 'Russia', 'cbrophye@thetimes.co.uk', 47, 19.08, '2020-04-05', 5, '2020-11-21', '2020-08-25');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Vitz', 'charted', '609-278-3972', 'Czech Republic', 'ssysonf@netscape.com', 76, 31.07, '2020-06-05', 14, '2020-05-05', '2020-03-09');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Skiba', 'charted', '916-316-8045', 'United States', 'bkilloughg@msn.com', 80, 54.03, '2020-05-26', 19, '2020-08-05', '2020-10-07');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Youfeed', 'charted', '452-623-0143', 'Thailand', 'miveansh@chronoengine.com', 75, 95.11, '2020-05-09', 7, '2020-08-02', '2020-02-04');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Zoozzy', 'charted', '738-219-8530', 'Indonesia', 'zclemetti@joomla.org', 66, 94.3, '2020-09-19', 17, '2020-11-02', '2020-08-16');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Kazu', 'charted', '202-878-0058', 'Philippines', 'fhasemanj@oaic.gov.au', 36, 30.36, '2020-09-30', 16, '2020-10-08', '2020-11-02');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Realcube', 'statutory', '882-940-8701', 'China', 'vsurmeyerk@theguardian.com', 60, 37.79, '2020-03-24', 17, '2020-07-01', '2020-02-14');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Youfeed', 'statutory', '215-214-4609', 'France', 'ahealdl@ted.com', 38, 80.82, '2020-06-10', 15, '2020-06-14', '2020-05-12');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Meemm', 'statutory', '319-836-6740', 'Guatemala', 'jjerschkem@ebay.com', 78, 45.57, '2020-08-26', 9, '2020-11-15', '2020-01-24');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Innotype', 'statutory', '331-528-5808', 'Japan', 'aleeln@miitbeian.gov.cn', 60, 48.02, '2020-09-12', 6, '2020-02-29', '2020-12-05');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Demivee', 'statutory', '128-826-8653', 'Japan', 'kmarchio@deliciousdays.com', 98, 90.45, '2020-01-28', 17, '2020-01-05', '2020-04-08');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Linkbridge', 'statutory', '419-119-8819', 'Thailand', 'mbenniep@zimbio.com', 20, 15.09, '2020-06-11', 16, '2020-04-14', '2020-10-06');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Skidoo', 'statutory', '681-250-6807', 'Russia', 'mrosenbuschq@nytimes.com', 13, 58.94, '2020-11-23', 19, '2019-12-12', '2020-10-20');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Skyble', 'statutory', '505-882-5106', 'Brazil', 'nyurlovr@jigsy.com', 56, 80.11, '2020-01-31', 18, '2020-10-12', '2020-02-14');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Vidoo', 'statutory', '325-466-5918', 'China', 'hmanvells@hud.gov', 73, 40.53, '2020-06-01', 11, '2020-10-06', '2020-01-14');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Meezzy', 'statutory', '305-123-2170', 'China', 'magottt@baidu.com', 97, 62.37, '2020-05-23', 9, '2020-09-29', '2020-12-04');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Twinder', 'statutory', '825-323-7352', 'China', 'wcrutchfieldu@github.io', 61, 49.15, '2020-05-25', 14, '2020-04-23', '2020-08-20');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Camimbo', 'statutory', '822-112-3683', 'Czech Republic', 'kbazeleyv@tripod.com', 88, 55.61, '2020-03-29', 18, '2020-11-04', '2020-08-29');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Lazzy', 'statutory', '194-239-2496', 'Bangladesh', 'eochterlonyw@cornell.edu', 59, 84.69, '2020-02-28', 1, '2020-07-31', '2020-05-20');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Vinder', 'statutory', '778-257-0601', 'Cuba', 'mlydiardx@geocities.com', 78, 84.3, '2020-01-26', 7, '2020-04-15', '2020-04-13');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Fadeo', 'statutory', '990-289-0547', 'China', 'bocrottyy@cocolog-nifty.com', 97, 15.46, '2020-03-13', 20, '2020-11-25', '2020-11-15');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Skinder', 'statutory', '751-589-6864', 'China', 'nharmstonz@xinhuanet.com', 26, 60.18, '2020-11-05', 5, '2020-08-23', '2020-10-04');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Aibox', 'statutory', '552-158-8298', 'Palestinian Territory', 'bshepland10@state.gov', 44, 9.68, '2020-08-31', 12, '2020-01-03', '2020-05-12');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Yadel', 'statutory', '990-132-0397', 'Brazil', 'cmanna11@java.com', 25, 41.16, '2020-07-26', 9, '2020-04-23', '2020-11-20');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Thoughtworks', 'statutory', '183-765-0084', 'Thailand', 'haddey12@who.int', 62, 73.52, '2020-11-12', 9, '2020-04-11', '2020-11-20');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Nlounge', 'statutory', '713-604-3668', 'Japan', 'atregido13@nydailynews.com', 99, 10.78, '2020-01-23', 13, '2020-05-22', '2020-09-07');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Abatz', 'sole proprietorship', '350-927-4435', 'Russia', 'rstringer14@trellian.com', 49, 40.75, '2020-08-08', 2, '2020-02-07', '2020-07-15');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Fivechat', 'sole proprietorship', '164-612-7950', 'Mongolia', 'dmcrobb15@msu.edu', 66, 93.74, '2020-02-23', 15, '2020-07-17', '2020-06-22');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Zooxo', 'sole proprietorship', '935-174-7590', 'Mayotte', 'rcominello16@gizmodo.com', 81, 87.9, '2020-07-11', 13, '2019-12-30', '2020-06-10');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Zooveo', 'sole proprietorship', '731-263-8218', 'China', 'gpedrielli17@prlog.org', 83, 31.43, '2020-01-01', 3, '2020-09-28', '2020-04-30');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Bubblebox', 'sole proprietorship', '269-859-3234', 'Ethiopia', 'cderoeck18@facebook.com', 63, 96.27, '2020-02-23', 10, '2020-03-01', '2020-07-29');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Kwideo', 'sole proprietorship', '663-873-6445', 'Portugal', 'nklimp19@epa.gov', 29, 26.48, '2020-07-18', 12, '2020-07-03', '2019-12-29');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Browsecat', 'sole proprietorship', '911-174-1130', 'Indonesia', 'bcuddehy1a@homestead.com', 34, 35.88, '2020-06-26', 10, '2020-05-06', '2020-09-05');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Centimia', 'sole proprietorship', '979-482-0738', 'France', 'csorbie1b@seesaa.net', 81, 12.06, '2020-11-09', 4, '2020-11-27', '2020-10-08');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Mydeo', 'sole proprietorship', '815-963-9773', 'Argentina', 'lniemetz1c@eepurl.com', 51, 35.09, '2020-05-16', 7, '2020-04-22', '2020-02-21');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Skippad', 'sole proprietorship', '999-843-7080', 'Indonesia', 'jdellenbroker1d@stumbleupon.com', 38, 32.1, '2020-08-25', 7, '2020-09-18', '2020-10-24');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Yoveo', 'sole proprietorship', '761-468-2151', 'Mali', 'pdury1e@ocn.ne.jp', 82, 99.79, '2020-06-14', 1, '2020-04-03', '2019-12-07');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Voomm', 'sole proprietorship', '761-960-3364', 'Brazil', 'lmaunder1f@aol.com', 48, 14.91, '2020-02-16', 18, '2020-07-08', '2020-09-16');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Roodel', 'sole proprietorship', '395-302-6659', 'China', 'sridwood1g@shinystat.com', 21, 48.38, '2020-03-28', 8, '2020-05-22', '2019-12-08');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Quimm', 'sole proprietorship', '106-355-7772', 'Burkina Faso', 'bhazlehurst1h@exblog.jp', 33, 27.57, '2020-07-24', 9, '2019-12-20', '2020-06-19');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Jabbersphere', 'sole proprietorship', '169-818-3023', 'Indonesia', 'htincknell1i@hatena.ne.jp', 92, 65.45, '2020-09-04', 8, '2020-07-22', '2020-05-11');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Aimbo', 'sole proprietorship', '731-874-9214', 'Colombia', 'mratnage1j@topsy.com', 18, 94.68, '2020-11-07', 10, '2020-06-17', '2020-06-01');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Photolist', 'sole proprietorship', '458-532-3191', 'China', 'gvigars1k@ifeng.com', 10, 61.34, '2020-05-31', 5, '2020-06-11', '2020-12-05');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Youspan', 'partnership firm', '643-839-5046', 'Mexico', 'llashmore1l@lycos.com', 47, 16.28, '2020-10-17', 1, '2020-07-04', '2020-04-28');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Skinix', 'partnership firm', '822-820-9142', 'Uganda', 'tdownton1m@sohu.com', 91, 49.49, '2020-07-19', 8, '2020-11-25', '2020-08-31');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Skinder', 'partnership firm', '869-281-7185', 'Japan', 'rmccroft1n@dropbox.com', 36, 40.71, '2020-06-30', 17, '2020-02-20', '2020-05-04');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Thoughtworks', 'partnership firm', '220-739-4567', 'Indonesia', 'rdoiley1o@who.int', 3, 35.69, '2020-09-05', 5, '2020-05-04', '2020-09-01');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Jabberstorm', 'partnership firm', '387-260-1284', 'Panama', 'hfass1p@usatoday.com', 100, 21.16, '2020-08-18', 8, '2020-04-25', '2020-09-11');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Fivechat', 'partnership firm', '948-145-7502', 'Ukraine', 'omish1q@buzzfeed.com', 90, 20.19, '2020-05-08', 5, '2020-05-30', '2019-12-24');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Devcast', 'partnership firm', '578-757-7375', 'Japan', 'kasmus1r@hugedomains.com', 38, 53.91, '2020-06-25', 16, '2020-06-12', '2020-02-05');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Tagpad', 'partnership firm', '440-136-6214', 'Afghanistan', 'bnorthcott1s@rakuten.co.jp', 4, 94.42, '2020-10-03', 10, '2020-11-17', '2020-07-09');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Realcube', 'partnership firm', '832-965-0441', 'Iran', 'klandall1t@angelfire.com', 22, 34.18, '2020-07-21', 19, '2020-11-26', '2020-05-20');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Lazzy', 'partnership firm', '833-974-8483', 'Philippines', 'dpache1u@hexun.com', 66, 83.51, '2020-08-08', 10, '2020-01-14', '2020-04-20');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Aimbu', 'partnership firm', '162-131-9980', 'China', 'cmckeighen1v@altervista.org', 24, 56.58, '2020-09-20', 7, '2020-10-11', '2020-03-25');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Demimbu', 'corporation', '898-934-0685', 'Ecuador', 'rwatsham1w@intel.com', 36, 20.99, '2020-02-29', 15, '2020-07-14', '2020-03-12');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Wikizz', 'corporation', '403-518-9793', 'Portugal', 'asculley1x@squidoo.com', 39, 43.96, '2020-08-15', 1, '2019-12-30', '2020-01-03');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Ailane', 'corporation', '866-859-0011', 'Japan', 'tarmsden1y@naver.com', 98, 99.59, '2020-11-02', 17, '2020-05-03', '2020-10-04');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Quinu', 'corporation', '593-238-8451', 'Brazil', 'mmacneilley1z@newyorker.com', 19, 23.81, '2020-06-27', 9, '2020-08-22', '2020-01-26');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Jabberbean', 'corporation', '535-434-2722', 'China', 'fcartmail20@amazon.de', 10, 50.8, '2020-01-21', 2, '2020-11-01', '2020-09-13');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Yodel', 'corporation', '587-726-7229', 'Colombia', 'gheaseman21@nyu.edu', 4, 56.04, '2020-08-19', 3, '2020-04-10', '2020-09-12');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Bluezoom', 'corporation', '545-677-9891', 'Poland', 'ccausbey22@gnu.org', 42, 97.77, '2019-12-25', 14, '2020-05-18', '2020-08-25');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Tagcat', 'corporation', '310-694-4975', 'China', 'vyewdell23@npr.org', 42, 81.36, '2019-12-24', 6, '2020-07-07', '2020-08-21');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Rhybox', 'corporation', '217-909-6019', 'United States', 'gpride24@fema.gov', 36, 35.04, '2020-07-31', 19, '2020-04-13', '2019-12-23');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Babbleset', 'corporation', '576-308-0910', 'Brazil', 'broelvink25@wikimedia.org', 17, 38.66, '2020-03-08', 19, '2020-01-18', '2020-08-06');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Voolia', 'corporation', '609-933-4717', 'Brazil', 'lrusling26@edublogs.org', 95, 22.96, '2020-08-20', 6, '2020-06-27', '2020-09-30');
    insert into businesses (name, business_type, phone, address, email, num_employees, avg_salary, established_date, total_branches, created_at, updated_at) values ('Twitterbeat', 'corporation', '206-946-5990', 'Germany', 'certel27@studiopress.com', 53, 31.14, '2020-12-04', 6, '2020-10-10', '2020-03-21');
     "
    ActiveRecord::Base.connection.execute(sql)
end
import_csv_to_table()


