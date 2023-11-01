Create Database IF NOT EXISTS Biblioteca;
Use Biblioteca;
DROP TABLE Livros;
CREATE TABLE IF NOT EXISTS Livros (
    livros_id INT PRIMARY KEY Auto_Increment,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS Autores (
	Autor_id INT PRIMARY KEY Auto_Increment,
    Autor VARCHAR(255)
    );
    CREATE TABLE IF NOT EXISTS Editoras(
	Editora_id INT PRIMARY KEY Auto_Increment,
    Editora VARCHAR(255)
    );
    ALTER TABLE livros DROP Column autor;
    ALTER TABLE livros DROP Column editora;
    ALTER TABLE livros ADD autor_id INT(13);
    ALTER TABLE livros ADD editora_id INT(13);
    
    INSERT INTO Livros (titulo, ano_publicacao, isbn, autor_id, editora_id) VALUES 
( 'A Culpa é das Estrelas', 2012, 9788580573466, 1, 1),
( 'Harry Potter e a Pedra Filosofal', 1997, 9788532511010, 2, 2),
( 'O Senhor dos Anéis: A Sociedade do Anel', 1954, 9788533603149, 3, 3),
( 'The Catcher in the Rye',  '1951', 9780316769488, 4, 4),
( '1984', 1949, 9788522106169,5 , 5),
( 'Percy Jackson e o Ladrão de Raios',  2005, 9788598078355, 6, 6),
( 'Grande Sertão: Veredas', 1956, 9788520923251, 7, 7),
( 'Memórias Póstumas de Brás Cubas', 1881, 9788535910663, 8, 8),
( 'Vidas Secas', 1938, 9788572326972, 9, 9),
( 'O Alienista', 1882, 9788572327429, 10, 10),
( 'O Cortiço', 1890, 9788579027048, 11, 11),
( 'Dom Casmurro', 1899, 9788583862093, 12, 12),
( 'Macunaíma', 1928, 9788503012302, 13 ,13);
    INSERT INTO autores (Autor) VALUES 
    ( 'John Green'), ( 'J.K. Rowling'), ( 'J.R.R. Tolkien' ), (  'J.D. Salinger'), (  'George Orwell' ), ( 'Rick Riordan' ),
    ( 'João Guimarães Rosa'), (  'Machado de Assis'), (  'Graciliano Ramos'), ( 'Machado de Assis'), ( 'Aluísio Azevedo'),
    (  'Machado de Assis'), ( 'Mário de Andrade');
    INSERT INTO editoras (Editora) VALUES 
    (  'Intrínseca'), ( 'Rocco'), (  'Martins Fontes'), (  'Little, Brown and Company'), (  'Companhia Editora Nacional' ),
    (  'Intrínseca'), ( 'Nova Fronteira'), ( 'Companhia das Letras'), ( 'Companhia Editora Nacional'), (  'Martin Claret'),
    (  'Penguin Companhia'), ( 'Penguin Companhia'), ( 'Companhia Editora Nacional');
    SELECT * FROM LIVROS;