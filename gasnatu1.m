% A UTILIZAÇÃO DO GÁS NATURAL COMO TRANSIÇÃO ESTÁVEL DA MATRIZ ENERGÉTICA 
disp('====> IFPA Campus Ananindeua -> Grupo de Pesquisa GM²SC <===')
disp(' =======> Energia Elétrica via Gás Natural   <=======')
disp(' --> Simulações Computacionais de Equações Diferenciais  <--')
vetor_t = [0 1];
i0 = 1;
% Equação Diferencial
% func = @(x,y) exp(-x/3) - y/2;
% func = @(x,y) x*sqrt(y);
E = 40; L = 20; C = 0.01; Q = 4; R=200;
func = @(t,i) (E-R*i-Q/C)/L;
options = odeset('Abstol',1e-6,'Reltol',1e-6);
[t,i] = ode45(func,vetor_t,i0, options);
%% ------------------------------------------------------------------------
figure (1)
plot(t,i,'r','DisplayName','I(t)','LineWidth',2)
xlabel('Tempo (s)')
ylabel('Corrente elétrica (A)')
title('Energia Termoelétrica')
legend
grid on

%% ------------------------------------------------------------------------
figure (2)
[X,Y] = meshgrid(0:0.1:1);
ED = (40-200*Y-400)/20;
contourf(X,Y,ED)
xlabel('Tempo (s)')
ylabel('Corrente elétrica (A)')
zlabel('E (MJ)')
title('Energia Termoelétrica')
%% ------------------------------------------------------------------------
figure (3)
surfc(X,Y,ED)
xlabel('Tempo (s)')
ylabel('Corrente elétrica (A)')
zlabel('E (MJ)')
title('Energia Termoelétrica')

