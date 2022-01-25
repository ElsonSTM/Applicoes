INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (autority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (autority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (autority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, Img_Gray_Uri) VALUES ('BootCamp Excel', 'http://www.santoantoniododescoberto.go.gov.br/site/wp-content/uploads/2019/07/35928cdc-4911-466c-8daa-f91694f7ad04.png', 'https://fdr.com.br/wp-content/uploads/2020/03/Imagem-Artigo-1-1024x576.jpg' );

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00', 1 );
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00', 1 );

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Curso Básico', 1, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_introducao-ao-html_2162.png', 1, 1 );
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire as suas dúvidas', 2, 'https://i.ytimg.com/vi/knGk9aUr4Do/maxresdefault.jpg', 2, 1 );
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://d2slcw3kip6qmk.cloudfront.net/marketing/techblog/Inspector-tab/Header.png', 0, 1 );

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capitulo, vamos começar', 1, 'https://d2slcw3kip6qmk.cloudfront.net/marketing/techblog/Inspector-tab/Header.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capitulo, vamos continuar', 2, 'https://d2slcw3kip6qmk.cloudfront.net/marketing/techblog/Inspector-tab/Header.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capitulo, vamos finalizar', 3, 'https://d2slcw3kip6qmk.cloudfront.net/marketing/techblog/Inspector-tab/Header.png', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2021-11-20T13:00:00Z', null, true, false)