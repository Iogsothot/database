insert into "eventPriority" ("priorityName", "priorityDescription")
values ('global', 'Общесистемные уведомления');
insert into "eventPriority" ("priorityName", "priorityDescription")
values ('low', 'Уведомление низкого приоритета');
insert into "eventPriority" ("priorityName", "priorityDescription")
values ('medium', 'Уведомление среднего приоритета');
insert into "eventPriority" ("priorityName", "priorityDescription")
values ('high', 'Уведомление высокого приоритета');
insert into "eventPriority" ("priorityName", "priorityDescription")
values ('haf', 'Уведомление самого высокого приоритета');

insert into "event" ("eventPriorityId", "groupId", "eventText", "eventDate")
values ((select "id" from "eventPriority" where "priorityName" = 'low' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Сдать лабораторную работу по УД', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'low' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Сдать лабораторную работу по ТП', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'low' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Сдать лабораторную работу по МТ', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'medium' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Сдать второй этап по УД', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'medium' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Пройти тест по БИТ', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'medium' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Отправить эссе по английскому', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'high' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Подготовится к экзамену по УД', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'high' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Подготовится к экзамену по ПНП', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'haf' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Завтра крайний срок сдачи проекта', CURRENT_TIMESTAMP),
       ((select "id" from "eventPriority" where "priorityName" = 'haf' limit 1),
        (select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        'Завтра последняя пересдача по ТП', CURRENT_TIMESTAMP);

insert into "quiz" ("subjectId", "quizName", "quizDescription")
values ((select "id" from "subject" where "subjectName" = 'Тестирование программного обеспечения' limit 1),
        'Рейтинг1 ТПО', 'Подготовка к рейтингу 1 по тестированию ПО'),
       ((select "id" from "subject" where "subjectName" = 'Тестирование программного обеспечения' limit 1),
        'Рейтинг2 ТПО', 'Подготовка к рейтингу 2 по тестированию ПО'),
       ((select "id" from "subject" where "subjectName" = 'Тестирование программного обеспечения' limit 1),
        'Рейтинг3 ТПО', 'Подготовка к рейтингу 3 по тестированию ПО'),
       ((select "id" from "subject" where "subjectName" = 'CASE-технологии' limit 1), 'Рейтинг1 case',
        'Подготовка к рейтингу 1 по case-тухнологиям'),
       ((select "id" from "subject" where "subjectName" = 'CASE-технологии' limit 1), 'Рейтинг2 case',
        'Подготовка к рейтингу 1 по case-тухнологиям'),
       ((select "id" from "subject" where "subjectName" = 'CASE-технологии' limit 1), 'Рейтинг3 case',
        'Подготовка к рейтингу 1 по case-тухнологиям'),
       ((select "id" from "subject" where "subjectName" = 'Технологии программирования' limit 1), 'Рейтинг1 тп',
        'Подготовка к рейтингу 1 по тп'),
       ((select "id" from "subject" where "subjectName" = 'Технологии программирования' limit 1), 'Рейтинг2 тп',
        'Подготовка к рейтингу 1 по тп'),
       ((select "id" from "subject" where "subjectName" = 'Технологии программирования' limit 1), 'Рейтинг3 тп',
        'Подготовка к рейтингу 1 по тп'),
       ((select "id"
         from "subject"
         where "subjectName" = 'Администрирование и безопасность программно-информационных систем'
         limit 1), 'Рейтинг1',
        'Подготовка к рейтингу 1 по Администрирование и безопасность программно-информационных систем');

insert into "question" ("quizId", "questionText")
values ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое объект?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое метод?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое класс?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое полиморфизм?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое наследование?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое инкапсуляция?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое делегат?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое интерфейс?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое лямба-выражения?'),
       ((select "id" from "quiz" where "quizName" = 'Рейтинг1 тп' limit 1), 'Что такое поток?');

insert into "quizVariant"("questionId", "quizVariantText", "isCorrect")
values ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'Экземпляр класса', true),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'класс', false),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'метод', false),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'namespace', false),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'framework', false),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'library', false),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'свойство', false),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'атрибут', false),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), 'любовь', false),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1), '42', true);

insert into "quizHistory" ("questionId", "selectedVariantId", "userId", "quizSubmitDate")
values ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP),
       ((select "id" from "question" where "questionText" = 'Что такое объект?' limit 1),
        (select "id" from "quizVariant" order by random() limit 1),
        (select "id" from "user" order by random() limit 1), CURRENT_TIMESTAMP);

insert into "quizResult" ("quizId", "userId", result)
values ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1)),
       ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1)),
       ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1)),
       ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1)),
       ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1)),
       ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1)),
       ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1)),
       ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1)),
       ((select "id" from quiz order by random() limit 1), (select "id" from "user" order by random() limit 1),
        (select random() * 10 + 1));



