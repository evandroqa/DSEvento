# DSEvento - Curso Dev Superior
> Formação Desenvolvedor Moderno<br>
Módulo: Back end<br>
Capítulo: Modelo de domínio e ORM

Projeto desenvolvido para gerenciar as informações dos participantes das atividades de um
evento acadêmico. Utilizado o Spring Boot com Java e banco de dados H2.

O **H2 é um banco de dados em memória** que executa todas as operações do CRUD, permitindo assim que possamos testar nossa aplicação mesmo sem um banco de dados já definido.<br>

+ Para criar o projeto foi utilizado o Spring Initializr neste endereço: 👉https://start.spring.io/ e também a versão 21 LTS do java.<br>
![event_academ](https://github.com/user-attachments/assets/190c965f-c400-4d48-9832-87dd8afa5156)

+ O Projeto foi implementado no modelo conceitual, e existe um seeding da base de dados - import.sql - para povoamento das tabelas.<br>
![image](https://github.com/user-attachments/assets/54368374-52d6-42c2-9d8a-54e526e57eac)

Após baixar o projeto deste repositório, start o aplicativo pela sua IDE favorita e depois faça as consultas no endereço: http://localhost:8080/h2-console <br>

Alguns exemplos de SELECT (Transact-SQL) para teste do seeding.

~~~javascript
-- Linhas de código em DML
-- Listagem de participantes por categoria e atividades acadêmicas.

SELECT CA.descricao, AT.NOME as curso, PA.nome as participante, PA.email, AT.descricao, AT.preco
FROM tb_participante PA
      JOIN tb_atividade_participante AP ON PA.id = AP.participante_id
      JOIN tb_atividade AT ON AP.atividade_id = AT.id
      JOIN tb_categoria CA ON AT.categoria_id = CA.id
ORDER BY CA.descricao, AT.nome, PA.nome
~~~

~~~javascript
-- Listagem de atividades por categorias.

SELECT CA.descricao categoria, AT.nome, AT.descricao, AT.preco
FROM tb_atividade AT
      JOIN tb_categoria CA ON AT.categoria_id = CA.id
ORDER BY CA.descricao, AT.nome
~~~
