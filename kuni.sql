ALTER TABLE [dbo].[JAPAN_VER80] ADD KUNI VARCHAR(30)
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '蝦夷国' WHERE KEN = '北海道'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '陸奥国' WHERE KEN = '青森県' OR KEN = '岩手県'　OR KEN = '宮城県'　OR KEN = '福島県' OR  (KEN IN('秋田県') AND (SIKUCHOSON = '小坂町' OR SIKUCHOSON = '鹿角町'))
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '出羽国' WHERE (KEN = '秋田県' AND KUNI IS NULL) OR KEN = '山形県'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '下野国' WHERE KEN = '栃木県' 
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '上野国' WHERE KEN = '群馬県'
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '安房国' WHERE (KEN IN('千葉県') AND (SIKUCHOSON = '館山市' OR SIKUCHOSON = '鴨川市' OR SIKUCHOSON = '南房総市' OR SIKUCHOSON = '鋸南町'))
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '上総国' WHERE (KEN IN('千葉県') AND SIKUCHOSON IN ('木更津市','茂原市','東金市','勝浦市','市原市','君津市','富津市','袖ケ浦市','山武市','いすみ市','大綱白里市','芝山市','一宮町','睦沢町','長生村','白子町','長柄町','長南町','大多喜町','御宿町')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '下総国' WHERE KEN IN('千葉県') AND KUNI IS NULL
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '武蔵国' WHERE KEN IN('東京都','埼玉県')
UPDATE [dbo].[JAPAN_VER80] SET KUNI = '相模国' WHERE KEN IN('神奈川県') AND KUNI IS NULL