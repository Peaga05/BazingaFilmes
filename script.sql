CREATE DATABASE [BazingaFilmesDB]
USE [BazingaFilmesDB]
GO
/****** Object:  Table [dbo].[Ator]    Script Date: 26/11/2023 14:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ator](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](255) NULL,
	[sobrenome] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atuacao]    Script Date: 26/11/2023 14:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atuacao](
	[idAtor] [int] NOT NULL,
	[idFilme] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idAtor] ASC,
	[idFilme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filme]    Script Date: 26/11/2023 14:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filme](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](255) NULL,
	[descricao] [varchar](255) NULL,
	[lancamento] [date] NULL,
	[categoria] [varchar](255) NULL,
	[idIdioma] [int] NULL,
	[classificacao] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 26/11/2023 14:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ator] ON 

INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (7, N'Lindsay', N'Lohan')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (8, N'Rachel', N'McAdams')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (9, N'Amanda', N'Seyfried')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (10, N'Lacey', N'Chabert')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (11, N'Christian', N'Bale')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (12, N'Heath', N'Ledger')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (13, N'Gary', N'Oldman')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (14, N'Aaron', N'Eckhart')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (15, N'Jim', N'Carrey')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (16, N'Morgan', N'Freeman')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (17, N'Steve', N'Carell')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (18, N'Jennifer', N'Aniston')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (19, N'Kevin', N'Conroy')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (20, N'Nathan', N'Fillion')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (21, N'Michael B.', N' Jordan')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (22, N'Cary', N'Elwes')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (23, N'Andy', N'Samberg')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (24, N'Cristin', N'Milioti')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (25, N'Camila', N'Mendes')
INSERT [dbo].[Ator] ([id], [nome], [sobrenome]) VALUES (26, N'Jonathan Kimble', N'Simmons')
SET IDENTITY_INSERT [dbo].[Ator] OFF
GO
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (7, 15)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (8, 15)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (9, 15)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (10, 15)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (11, 16)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (12, 16)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (13, 16)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (14, 16)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (15, 17)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (16, 16)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (16, 17)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (17, 17)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (18, 17)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (19, 18)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (20, 18)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (21, 18)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (22, 18)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (23, 19)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (24, 19)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (25, 19)
INSERT [dbo].[Atuacao] ([idAtor], [idFilme]) VALUES (26, 19)
GO
SET IDENTITY_INSERT [dbo].[Filme] ON 

INSERT [dbo].[Filme] ([id], [titulo], [descricao], [lancamento], [categoria], [idIdioma], [classificacao]) VALUES (15, N'Meninas Malvadas', N'Cady foi educada na África pelos seus pais', CAST(N'2004-07-09' AS Date), N'Cómedia', 3, N'10')
INSERT [dbo].[Filme] ([id], [titulo], [descricao], [lancamento], [categoria], [idIdioma], [classificacao]) VALUES (16, N'Batman: O Cavaleiro das Trevas', N'Batman tem conseguido manter a ordem em Gotham', CAST(N'2008-07-18' AS Date), N'Ação', 4, N'14')
INSERT [dbo].[Filme] ([id], [titulo], [descricao], [lancamento], [categoria], [idIdioma], [classificacao]) VALUES (17, N'O Todo Poderoso', N'Bruce Nolan é um jornalista que tem a vida perfeita.', CAST(N'2003-06-06' AS Date), N'Cómedia', 25, N'L')
INSERT [dbo].[Filme] ([id], [titulo], [descricao], [lancamento], [categoria], [idIdioma], [classificacao]) VALUES (18, N'Liga da Justiça: Ponto de Ignição', N'Flash viaja no tempo para consertar algo do passado', CAST(N'2013-07-30' AS Date), N'Animação', 10, N'14')
INSERT [dbo].[Filme] ([id], [titulo], [descricao], [lancamento], [categoria], [idIdioma], [classificacao]) VALUES (19, N'Palm Springs', N'Presos em um loop temporal, dois convidados de um casamento', CAST(N'2020-07-10' AS Date), N'Cómedia', 12, N'16')
SET IDENTITY_INSERT [dbo].[Filme] OFF
GO
SET IDENTITY_INSERT [dbo].[Idioma] ON 

INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (3, N'Português')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (4, N'Inglês')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (10, N'Polonês')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (11, N'Catalão')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (12, N'Russo')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (13, N'Alemão')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (14, N'Árabe ')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (15, N'Japonês')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (17, N'Francês')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (18, N'Latim')
INSERT [dbo].[Idioma] ([id], [descricao]) VALUES (25, N'Finlandes')
SET IDENTITY_INSERT [dbo].[Idioma] OFF
GO
ALTER TABLE [dbo].[Atuacao]  WITH CHECK ADD  CONSTRAINT [fk_ator] FOREIGN KEY([idAtor])
REFERENCES [dbo].[Ator] ([id])
GO
ALTER TABLE [dbo].[Atuacao] CHECK CONSTRAINT [fk_ator]
GO
ALTER TABLE [dbo].[Atuacao]  WITH CHECK ADD  CONSTRAINT [fk_filme] FOREIGN KEY([idFilme])
REFERENCES [dbo].[Filme] ([id])
GO
ALTER TABLE [dbo].[Atuacao] CHECK CONSTRAINT [fk_filme]
GO
ALTER TABLE [dbo].[Filme]  WITH CHECK ADD  CONSTRAINT [fk_idioma] FOREIGN KEY([idIdioma])
REFERENCES [dbo].[Idioma] ([id])
GO
ALTER TABLE [dbo].[Filme] CHECK CONSTRAINT [fk_idioma]
GO
/****** Object:  StoredProcedure [dbo].[deleteAtor]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteAtor]
	@id INT,
	@ret INT OUTPUT
AS
BEGIN
	IF EXISTS (SELECT * FROM Atuacao WHERE idAtor = @id)
	BEGIN
		SET @ret = -1
	END
	ELSE
	BEGIN
		DELETE FROM Ator WHERE id = @id
		SET @ret = 0
	END
END
GO
/****** Object:  StoredProcedure [dbo].[deleteFilme]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteFilme]
	@id INT,
	@ret INT OUTPUT
AS
BEGIN
	IF EXISTS (SELECT * FROM atuacao WHERE idFilme = @id)
	BEGIN
		SET @ret = -1
	END
	ELSE
	BEGIN
		DELETE FROM filme WHERE id = @id
		SET @ret = 0
	END
END

GO
/****** Object:  StoredProcedure [dbo].[deleteIdioma]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteIdioma]
	@id int, @ret int output
AS
BEGIN
	IF EXISTS (SELECT * FROM Filme WHERE idIdioma = @id)
	BEGIN
		SET @ret = -1
	END
	ELSE
	BEGIN
		DELETE FROM idioma WHERE id = @id
		SET @ret = 0
	END
END
GO
/****** Object:  StoredProcedure [dbo].[insertAtor]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertAtor]
	@nome varchar(255) = '', @sobrenome varchar(255) = '', 	@ret int output
AS
BEGIN
	if exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
		set @ret = -1
	else
		INSERT into ator (nome,sobrenome) values (@nome,@sobrenome)
END
GO
/****** Object:  StoredProcedure [dbo].[insertAtuacao]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertAtuacao]
	@idFilme int, @idAtor int, @ret int output
AS
BEGIN
	if exists(select * from Atuacao where idFilme=@idFilme and idAtor = @idAtor)
	BEGIN
		set @ret = -1
	END
	else
		INSERT INTO Atuacao(idAtor, idFilme) values (@idAtor,@idFilme)
END
GO
/****** Object:  StoredProcedure [dbo].[insertFilme]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertFilme]
	@titulo varchar(255) = '', @descricao varchar(255) = '', @lancamento DATE, @categoria VARCHAR(255) = '', @idIdioma INT, @classificacao varchar(255) = '', @ret int output
AS
BEGIN
	if exists(select * from Filme where titulo = @titulo and descricao=@descricao and categoria = @categoria and idIdioma = @idIdioma and classificacao = @classificacao)
		set @ret = -1
	else
		INSERT INTO Filme(titulo, descricao, lancamento,categoria, idIdioma, classificacao) values (@titulo,@descricao, @lancamento, @categoria, @idIdioma, @classificacao)
END
GO
/****** Object:  StoredProcedure [dbo].[insertIdioma]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertIdioma]
	@descricao varchar(255) = '', @ret int output
AS
BEGIN
	if exists(select * from idioma where descricao = @descricao)
		begin
			set @ret = -1
		end
	else
		begin
			INSERT into idioma (descricao) values (@descricao)
		end
END
GO
/****** Object:  StoredProcedure [dbo].[selectAtor]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectAtor]
	@nome varchar(255) = ''
AS
BEGIN
	select * 
	from ator
	where nome like '%' + @nome + '%' or 
		sobrenome like '%' + @nome + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[selectAtorById]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectAtorById]
	@id int
AS
BEGIN
	select * 
	from ator
	where id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[selectAtorFilme]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectAtorFilme]
@idFilme int, @idAtor int
AS
BEGIN
	select  a.nome + a.sobrenome as nome, f.titulo
	from Atuacao at
	inner join ator a on a.id = at.idAtor
	inner join filme f on f.id = at.idFilme
	where at.idAtor = @idAtor and at.idFilme = @idFilme
END
GO
/****** Object:  StoredProcedure [dbo].[selectAtuacao]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectAtuacao]
	@busca varchar(255)
AS
BEGIN
	select  a.nome + ' ' + a.sobrenome as nome, f.titulo
	from Atuacao at
	inner join ator a on a.id = at.idAtor
	inner join filme f on f.id = at.idFilme 
	where a.nome like '%' + @busca + '%' or 
		a.sobrenome like '%' + @busca + '%' or f.titulo like '%' + @busca + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[selectFilme]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectFilme]
	@titulo varchar(255) = ''
AS
BEGIN
	select f.*, i.descricao as idioma
	from filme f
	inner join Idioma i on i.id = f.idIdioma
	where titulo like '%' + @titulo + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[selectFilmeById]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectFilmeById]
	@id int
AS
BEGIN
	select f.*, i.descricao as idioma
	from filme f
	inner join Idioma i on i.id = f.idIdioma
	where f.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[selectIdioma]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectIdioma]
	@descricao varchar(255) = ''
AS
BEGIN
	select * 
	from idioma
	where descricao like '%' + @descricao + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[selectIdiomaById]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectIdiomaById]
	@id int
AS
BEGIN
	select * 
	from idioma
	where id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[updateAtor]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateAtor]
	@nome varchar(255) = '',@sobrenome varchar(255) = '', @id int, @ret int output
AS
BEGIN
	update ator set nome = @nome, sobrenome = @sobrenome where id = @id

	IF @@ROWCOUNT > 0
	BEGIN
        SET @ret = 0;
		END

    ELSE
	BEGIN
        SET @ret = -1;
		End
END
GO
/****** Object:  StoredProcedure [dbo].[updateFilme]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateFilme]
	@id int, @titulo varchar(255) = '', @descricao varchar(255) = '', @lancamento DATE, @categoria VARCHAR(255) = '', @idIdioma INT, @classificacao varchar(255) = '', @ret int output
AS
BEGIN
	update filme set titulo = @titulo, descricao = @descricao, lancamento = @lancamento, categoria = @categoria, idIdioma = @idIdioma, classificacao = @classificacao where id = @id

	IF @@ROWCOUNT > 0
        SET @ret = 0;
    ELSE
        SET @ret = -1;
END

GO
/****** Object:  StoredProcedure [dbo].[updateIdioma]    Script Date: 26/11/2023 14:06:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateIdioma]
	@descricao varchar(255) = '', @id int, @ret int output
AS
BEGIN
	update idioma set descricao = @descricao where id = @id

	IF @@ROWCOUNT > 0
		begin
			SET @ret = 0;
		end
    ELSE
		begin
			SET @ret = 1;
		end
END
GO
