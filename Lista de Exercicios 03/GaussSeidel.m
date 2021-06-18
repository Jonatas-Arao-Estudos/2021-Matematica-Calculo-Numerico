####### Método Gauss-Seidel
## Cálculo Numérico
## Professora Anna Karina F. Gomes
output_precision (6)

clear all;

########## ENTRADA ##########

A = [9 -2 3 2; 2 8 -2 3; -3 2 11 -4; -2 3 2 10];  	# matriz A

b = [54.5; -14; 12.5; -21]; 						# vetor coluna

x0 = [4.17832; -1.72951; 2.37727; -1.22093]; 		# Valor inicial do método

########## DADOS DA SIMULAÇÃO ##########

#kmax = 1;			# Número máximo de iterações - quando aplicável
eps	= 10^(-5);		# tolerancia epsilon

########## CÁLCULO DO MÉTODO ##########

k = 1;					# contador

Dr = eps + 1;			# Erro

L = tril(A, 0);		# Matriz triangular inferior (com a diagonal principal)
U = triu(A, 1);		# Matriz triangular superior (sem a diagonal principal)

	## Laço de repetição
	while (Dr > eps)
		# Indicador de Interação
		printf('\nInteracao ') 
		k
		printf('O valor de ')
		# Resolver x
		x = L\(b-U*x0)
		
		# Calcular erro
		printf('Erro: ')
		Dr = max(abs(x-x0))/max(abs(x))
		
		# Atualizar valor de x0 
		x0 = x;

		# Atualizar contador
		k = k+1;
	endwhile
	
	## Saída
	printf('\n\nO valor final da solucao eh ')
	x
	printf('Qtd de Interacoes eh ')
	k
	printf('Valor final do erro eh ')
	Dr