####### Método Gauss-Seidel
## Cálculo Numérico

output_precision (6)

clear all;

########## ENTRADA ##########

m1 = 2
m2 = 3
m3 = 1.5

k1 = 30
k2 = 25
k3 = 20
k4 = 15

g = 9.81

A = [(k1 + k2 + k3) -k3 0; -k3 (k3 + k4) -k4; 0 -k4 k4;];  	# matriz A

b = [m1*g; m2*g; m3*g] 						# vetor coluna

x0 = [0; 0; 0;]; 		# Valor inicial do método

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
	k-1
	printf('Valor final do erro eh ')
	Dr