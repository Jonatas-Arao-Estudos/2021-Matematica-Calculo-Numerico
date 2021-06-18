####### Método Gauss-Jacobi
## Cálculo Numérico
## Professora Anna Karina F. Gomes

output_precision (6)

clear all;
########## ENTRADA ##########

A = [9 -2 3 2; 2 8 -2 3; -3 2 11 -4; -2 3 2 10];  	# matriz A

b = [54.5; -14; 12.5; -21]; 						# vetor coluna

x0 = [0; 0; 0; 0]; 		# Valor inicial do método

########## DADOS DA SIMULAÇÃO ##########

kmax = 100;			# Número máximo de iterações - quando aplicável
eps	= 10^(-5);		# tolerancia epsilon

########## CÁLCULO DO MÉTODO ##########

k = 1;					# contador

Dr = eps + 1;			# Erro

D = diag(diag(A));		# Matriz diagonal (elementos da diagonal principal de A)

M = A - D; 				# Matriz A sem a diagonal principal

## Critério das Linha
for i = 1:rows(A)
	somlinha = 0;
  for j = 1:columns(A)
	if (i != j)
		somlinha += abs(A(i,j));
	endif
  endfor
  
  if((somlinha/abs(A(i,i))) < 1)
	critlin = true;
	else
	critlin = false;
	break
  endif
endfor

if(critlin)
	## Laço de repetição
	while (Dr > eps)
		# Indicador de Interação
		printf('\nInteracao ') 
		k
		printf('O valor de ')
		# Resolver x
		x = D\(b-M*x0)
		
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
	printf('Valor final do erro eh')
	Dr

	else
		printf('\nSistema falhou no criterio das linhas\n')
endif