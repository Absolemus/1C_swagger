﻿#Область ПрограммныйИнтерфейс
Функция ТипМетода(Тип) Экспорт
	Струкутра = Новый Соответствие;
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.GET, "get");
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.PUT, "put");
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.POST, "post");
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.DELETE, "delete");
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.OPTIONS, "options");
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.HEAD, "head");
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.PATCH, "patch");
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.TRACE, "trace");
	Струкутра.Вставить(Перечисления.ВидыМетодовHTTPЗапроса.SERVERS, "servers"); 
	
	Возврат Струкутра[Тип];
КонецФункции
#КонецОбласти