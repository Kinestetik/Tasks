﻿
&НаСервере
Процедура ОтправитьСообщениеНаСервере()
	
	//+ #174 Кравцов А.В. 2019-06-06
	//МассивПользователейДляОтправки = Новый Массив;
	//МассивПользователейДляОтправки.Добавить(ЭтотОбъект.ПользовательДляОтправки);
	МассивПользователейКому = Новый Массив;
	МассивПользователейКому.Добавить(ЭтотОбъект.ПользовательДляОтправки);
	МассивПользователейДляОтправки = узТелеграммСервер.ПолучитьМассивПолучателей(МассивПользователейКому); 
	//- #174 Кравцов А.В. 2019-06-06
	пОбъект = РеквизитФормыВЗначение("Объект");
	пОбъект.ОтправитьСообщениеTelegram(ЭтотОбъект.ТескстСообщенияДляОтправки, МассивПользователейДляОтправки);
	
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьСообщение(Команда)
	ОтправитьСообщениеНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПрочитатьСообщенияНаСервере()
	
	пОбъект = РеквизитФормыВЗначение("Объект");
	пОбъект.ПрочитатьСообщенияTelegram();
	ЗначениеВРеквизитФормы(пОбъект, "Объект");
	
КонецПроцедуры

&НаКлиенте
Процедура ПрочитатьСообщения(Команда)
	ПрочитатьСообщенияНаСервере();
КонецПроцедуры
