-- Active: 1710242554065@@127.0.0.1@5432@20241_fatec_ipi_pbdi_se
DO $$
	DECLARE
		n1 NUMERIC(5,2);
		n2 INTEGER;
		n3 INTEGER;
		a1 NUMERIC(5,2);
		b1 NUMERIC(5,2);
		c1 NUMERIC(5,2);
		resul NUMERIC(5,2);
		limite_inferior INTEGER := 5;
		limite_superior INTEGER := 17;
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
		n3 := floor(random())
		RAISE NOTICE '%' , (n3 - 1)^3;
		RAISE NOTICE '%' , (n3 + 1)^2;
		
		END
$$