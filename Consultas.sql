-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM filmes ORDER BY Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM filmes WHERE Nome = "De Volta para o Futuro";

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM filmes WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM filmes WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM filmes 
WHERE Duracao > 100 and Duracao < 150 
ORDER BY Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Ano) AS Quantidade FROM filmes 
GROUP BY Ano 
ORDER BY Duracao DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT filmes.Nome AS Nome, generos.Genero AS Genero FROM filmesgenero 
INNER JOIN filmes ON filmesgenero.IdFilme = filmes.Id 
INNER JOIN generos ON filmesgenero.IdGenero = generos.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT filmes.Nome AS Nome, generos.Genero AS Genero FROM filmesgenero 
INNER JOIN filmes ON filmesgenero.IdFilme = filmes.Id 
INNER JOIN generos ON filmesgenero.IdGenero = generos.Id
WHERE generos.Genero = "Mistério";

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT filmes.Nome AS Nome, atores.PrimeiroNome, atores.UltimoNome, Papel FROM elencofilme
INNER JOIN filmes ON elencofilme.IdFilme = filmes.Id
INNER JOIN atores ON elencofilme.IdAtor = atores.Id;  