--1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano FROM Filmes
Order by Ano

-- 3
SELECT Nome, Ano, Duracao From Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao From Filmes WHERE Ano = '1997'

--5
SELECT Nome, Ano, Duracao From Filmes WHERE Ano > '2000'

--6
SELECT Ano, Nome, Duracao FROM Filmes  WHERE Duracao > '100'  AND Duracao < '150' ORDER BY Duracao;

--7
SELECT Ano, Count (*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

--8
SELECT Atores.Id, PrimeiroNome, Atores.UltimoNome, Atores.Genero From Atores Where Genero = 'M'

--9
SELECT Atores.Id, Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero From Atores Where Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.ID
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.ID;

--11
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.ID
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.ID WHERE Generos.Genero = 'Mistério';

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;

