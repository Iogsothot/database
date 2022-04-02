-- Добавление поля
alter table "attachment"
    add column "checksum1" text;

-- Удаление поля
alter table "attachment"
    drop column "checksum1";

-- Переименование поля
alter table "attachment"
    rename "author" to "author_1";

-- Изменение поля
alter table "attachment"
    alter column "author_1" set default 'Вершинин',
    alter column "author_1" set not null;