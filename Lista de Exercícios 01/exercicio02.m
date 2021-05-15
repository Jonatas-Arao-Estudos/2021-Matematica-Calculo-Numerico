## Váriaveis
f = @(x) x*x*x + 4*x*x - 10;
a = 1;
b = 2;

## Tolerância
eps = 10 ^ (-3);

## Entradas
fa = f(a);
fb = f(b);

## Indice
i = 0;

# Aplicação
while (b - a > eps)
    m = (a + b) / 2;
    fm = f(m);

    if(fa * fm < 0)
        b = m;
        fb = fm;
    else
        a = m;
        fa = fm;
    endif
    i = i + 1;
endwhile

## Mostrando número de interações e valor aproximado de X
disp('numero de interacoes: ')
i
disp('aproximacao de f(x):')
x = m