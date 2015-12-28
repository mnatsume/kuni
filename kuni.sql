/*ALTER TABLE [dbo].[JAPAN_VER80] ADD KUNI VARCHAR(30)*/

UPDATE [dbo].[JAPAN_VER80] SET KUNI = '蝦夷国' WHERE KEN = '北海道'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '陸奥国' WHERE KEN = '青森県' OR KEN = '岩手県'　OR KEN = '宮城県'　OR KEN = '福島県' OR  (KEN IN('秋田県') AND (SIKUCHOSON = '小坂町' OR SIKUCHOSON = '鹿角町'))
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '出羽国' WHERE (KEN = '秋田県' AND KUNI IS NULL) OR KEN = '山形県'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '下野国' WHERE KEN = '栃木県' 
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '上野国' WHERE KEN = '群馬県'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '安房国' WHERE KEN = '千葉県' AND (SIKUCHOSON = '館山市' OR SIKUCHOSON = '鴨川市' OR SIKUCHOSON = '南房総市' OR SIKUCHOSON = '鋸南町')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '上総国' WHERE KEN = '千葉県' AND SIKUCHOSON IN ('木更津市','茂原市','東金市','勝浦市','市原市','君津市','富津市','袖ケ浦市','山武市','いすみ市','大網白里市','芝山市','一宮町','睦沢町','長生村','白子町','長柄町','長南町','大多喜町','御宿町','九十九里町')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '下総国' WHERE KEN = '千葉県' AND KUNI IS NULL 
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '下総国' WHERE KEN = '東京都' AND SIKUCHOSON IN ('墨田区','江東区','葛飾区','江戸川区','所属未定地')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '下総国' WHERE KEN = '埼玉県' AND SIKUCHOSON IN ('三郷市','幸手市','吉川市','松戸町','松伏町')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '下総国' WHERE KEN = '茨城県' AND SIKUCHOSON IN ('古河市','結城市','常総市','取手市','守谷市','坂東市','八千代町','五霞町','境町','利根町')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '相模国' WHERE KEN = '神奈川県' 
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '武蔵国' WHERE KEN IN ('東京都','埼玉県') OR (KEN = '神奈川県' AND /* SEIREI != '相模原市' */　SEIREI IN('横浜市','川崎市') AND SIKUCHOSON IN ('鶴見区','神奈川区','西区','中区','南区','保土ケ谷区','磯子区','金沢区','港北区','旭区','緑区','青葉区','都筑区','川崎区','幸区','中原区','高津区','多摩区','宮前区','麻生区'))

UPDATE [dbo].[JAPAN_VER80] SET KUNI = '甲斐国' WHERE KEN = '山梨県'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '信濃国' WHERE KEN = '長野県'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '佐渡国' WHERE KEN = '新潟県' AND SIKUCHOSON = '佐渡市'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '越後国' WHERE KEN = '新潟県' AND KUNI IS NULL

UPDATE [dbo].[JAPAN_VER80] SET KUNI = '伊豆国' WHERE KEN = '静岡県' AND SIKUCHOSON IN ('熱海市','三島市','伊東市','下田市','伊豆市','伊豆の国市','東伊豆町','河津町','南伊豆町','松崎町','西伊豆町','函南町')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '駿河国' WHERE KEN = '静岡県' AND SIKUCHOSON IN ('葵区','駿河区','清水区','富士宮市','富士市','焼津市','藤枝市','御殿場市','裾野市','清水町','長泉町','小山町')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '遠江国' WHERE KEN = '静岡県' AND KUNI IS NULL
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '画定不能' WHERE (KEN = '神奈川県' AND　SIKUCHOSON = '港南区') 
OR (KEN = '千葉県' AND　SIKUCHOSON = '横芝光町') 
OR (KEN = '千葉県' AND　SIKUCHOSON = '緑区')
OR (KEN = '千葉県' AND　SIKUCHOSON = '緑区')
OR (KEN = '埼玉県' AND　SIKUCHOSON = '久喜市')
OR (KEN = '埼玉県' AND　SIKUCHOSON = '春日部市')
OR (KEN = '茨城県' AND　SIKUCHOSON = '下妻市')
OR (KEN = '茨城県' AND　SIKUCHOSON = '稲敷市')
OR (KEN = '茨城県' AND　SIKUCHOSON = 'つくばみらい市')
OR (KEN = '茨城県' AND　SIKUCHOSON = '河内町')
OR (KEN = '静岡県' AND　SIKUCHOSON = '沼津市')
