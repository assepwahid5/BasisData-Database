# Privileges for `admin_peserta`@`localhost`

GRANT USAGE ON *.* TO `admin_peserta`@`localhost` IDENTIFIED BY PASSWORD '*8622A581BC8B978F3D940A38E084FCD889F1471C';

GRANT SELECT, INSERT, UPDATE ON `studycore`.`peserta` TO `admin_peserta`@`localhost`;

GRANT SELECT, INSERT ON `studycore`.`pengumpulantugas` TO `admin_peserta`@`localhost`;

GRANT SELECT ON `studycore`.`tugas` TO `admin_peserta`@`localhost`;


# Privileges for `admin_trainer`@`localhost`

GRANT USAGE ON *.* TO `admin_trainer`@`localhost` IDENTIFIED BY PASSWORD '*13D92FEEF4F491C848BDDEEEA25233C2A6C0666C';

GRANT SELECT, INSERT, UPDATE, DELETE ON `studycore`.`kursus` TO `admin_trainer`@`localhost`;

GRANT SELECT, INSERT, UPDATE, DELETE ON `studycore`.`tugas` TO `admin_trainer`@`localhost`;

GRANT SELECT, UPDATE ON `studycore`.`pengumpulantugas` TO `admin_trainer`@`localhost`;

GRANT SELECT, INSERT, UPDATE, DELETE ON `studycore`.`materikursus` TO `admin_trainer`@`localhost`;


# Privileges for `viewer`@`localhost`

GRANT USAGE ON *.* TO `viewer`@`localhost` IDENTIFIED BY PASSWORD '*D3DCF62F3D37FFC9D79804128A6205D314DC7F6E';

GRANT SELECT ON `studycore`.* TO `viewer`@`localhost`;