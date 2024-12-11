INSERT INTO tb_participante(nome, email) values ('José da Silva', 'jose@gmail.com')
INSERT INTO tb_participante(nome, email) values ('Tiago Faria', 'tiago@gmail.com')
INSERT INTO tb_participante(nome, email) values ('Maria do Rosário', 'maria@gmail.com')
INSERT INTO tb_participante(nome, email) values ('Teresa Silva', 'teresa@gmail.com')

INSERT INTO tb_categoria(descricao) VALUES ('Curso');
INSERT INTO tb_categoria(descricao) VALUES ('Oficina');

INSERT INTO tb_atividade(nome, descricao, preco, categoria_id) values ('Curso de HTML', 'Aprenda HTML de forma prática', 80.0, 1)
INSERT INTO tb_atividade(nome, descricao, preco, categoria_id) values ('Oficina de GitHub', 'Contole de versões de seus projetos', 50.0, 2)

INSERT INTO tb_bloco(inicio, fim, atividade_id) values (TIMESTAMP WITH TIME ZONE '2024-09-25T11:00:00Z', TIMESTAMP WITH TIME ZONE '2024-09-25T14:00:00Z', 1)
INSERT INTO tb_bloco(inicio, fim, atividade_id) values (TIMESTAMP WITH TIME ZONE '2024-09-25T17:00:00Z', TIMESTAMP WITH TIME ZONE '2024-09-25T21:00:00Z', 2)
INSERT INTO tb_bloco(inicio, fim, atividade_id) values (TIMESTAMP WITH TIME ZONE '2024-09-26T11:00:00Z', TIMESTAMP WITH TIME ZONE '2024-09-26T14:00:00Z', 2)

INSERT INTO tb_atividade_participante(atividade_id, participante_id) values (1,1)
INSERT INTO tb_atividade_participante(atividade_id, participante_id) values (1,2)
INSERT INTO tb_atividade_participante(atividade_id, participante_id) values (1,3)
INSERT INTO tb_atividade_participante(atividade_id, participante_id) values (2,1)
INSERT INTO tb_atividade_participante(atividade_id, participante_id) values (2,3)
INSERT INTO tb_atividade_participante(atividade_id, participante_id) values (2,4)