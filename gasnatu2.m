% A UTILIZAÇÃO DO GÁS NATURAL COMO TRANSIÇÃO ESTÁVEL DA MATRIZ ENERGÉTICA 
disp('====> IFPA Campus Ananindeua -> Grupo de Pesquisa GM²SC <===')
disp(' =======> Energia Elétrica via Gás Natural   <=======')
disp(' --> Simulações Computacionais de Equações Diferenciais  <--')
vetor_t = [0 2];
i0 = [1;0];
E = 40; L = 20; C = 0.01; Q = 4; R=200;
func = @(t,i) [i(2)                   ;
       -(R.*i(2)/L + i(1)./C.*L)];
options = odeset('Abstol', 1e-6,'Reltol',1e-6);
[t,i] = ode45(func,vetor_t,i0, options);
%% ------------------------------------
figure (1)
plot(t,i,'LineWidth',2)
xlabel('Tempo (s)')
ylabel('Q(C) e i(A)')
legend('Q(C)','i(A)')
title('Geração Termoelétrica')
grid on
%% ------------------------------------
figure (2)
plot(t,i(:,1),'b','LineWidth',2)
xlabel('Tempo (s)')
ylabel('Carga elétrica(A)')
legend('Q(t)')
title('Geração Termoelétrica')
grid on
%% ------------------------------------
figure (3)
plot(t,i(:,2),'r','LineWidth',2)
xlabel('Tempo (s)')
ylabel('Corrente elétrica(C)')
legend('i(t)')
title('Geração Termoelétrica')
grid on
disp('----- Fim da Simulação 2 -----')

