-- Active: 1710242554065@@127.0.0.1@5432@20241_fatec_ipi_pbdi_se
DO $$
	DECLARE
		n1 NUMERIC(5,2);
		n2 INTEGER;
		n3 INTEGER;
		a1 NUMERIC(5,2);
		b1 NUMERIC(5,2);
		c1 NUMERIC(5,2);
		n3 INTEGER;
		resul NUMERIC(5,2);
		limite_inferior INTEGER := 5;
		limite_superior INTEGER := 17;
		comprimento REAL;
    	largura REAL;
    	preco_por_metro_quadrado REAL;
    	valor_total REAL;
		ano_nascimento INTEGER;
    	ano_atual INTEGER;
    	idade INTEGER;
	BEGIN
		-- 0 <= n < 1 (intervalo real)
		n1 := random();
		RAISE NOTICE 'N1: %', n1;
		-- 1<= n <10 (real)
		n1 := 1 + random() * 9;
		RAISE NOTICE 'N1: %', n1;
		-- 1<= n <10 (inteiro)
		n2 := 1 + floor(random() * 9);
		RAISE NOTICE '%' , n2;
		-- programa que gera um valor inteiro
		RAISE NOTICE '%' , 1 + floor(random() * 101);
		-- programa que gera um valor real
		RAISE NOTICE '%' , 1 + random() * 11;
		-- programa que gera um valor real que esta no intervalo de 20 a 30
		RAISE NOTICE '%' , 20 + random() * 10;
		-- programa que gera 3 valores a, b, c e gere o valor de delta 
		a1 := random();
		b1 := random();
		c1 := random();
		RAISE NOTICE '%' , |/(b1^2 - 4*a1*c1);
		--programa que gera um numero inteiro e mostra a raiz cubica de seu antecessor e a raiz quadrada de seu sucessor
		n3 := floor(random() * 100);
    	RAISE NOTICE 'Número: %, Raiz Cúbica do Antecessor: %, Raiz Quadrada do Sucessor: %', n3, cbrt(n3 - 1), sqrt(n3 + 1);
		--programa que gera medidas reais de um terreno retangular e calcular o valor total do terreno
		comprimento := random() * 50 + 10; 
    	largura := random() * 30 + 5; 
    	preco_por_metro_quadrado := random() * (70 - 60) + 60;

    	valor_total := comprimento * largura * preco_por_metro_quadrado;

    	RAISE NOTICE 'Medidas: %m x %m, Preço por metro quadrado: $%, Valor total do terreno: $%', comprimento, largura, preco_por_metro_quadrado, valor_total;
		--programa que gera o ano de nascimento de uma pessoa e o ano atual, exibindo a idade da pessoa em anos
		 ano_nascimento := floor(random() * (2001 - 1980 + 1)) + 1980;
    	ano_atual := floor(random() * (2020 - 2010 + 1)) + 2010; 
    
   		idade := ano_atual - ano_nascimento;
    
    	RAISE NOTICE 'Ano de Nascimento: %, Ano Atual: %, Idade: % anos', ano_nascimento, ano_atual, idade;

		END
		
$$