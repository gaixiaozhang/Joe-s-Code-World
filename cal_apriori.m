%% ʹ��Apriori�㷨�ھ��������
clear;
% ������ʼ��
inputfile = 'menu_orders.txt'; % ������������������
outputfile='as.txt';% ���ת����0,1�����ļ�
minSup = 0.3; % ��С֧�ֶ�
minConf = 0.6;% ��С���Ŷ�
nRules = 1000;% �����������
sortFlag = 1;% ����֧�ֶ�����
rulefile = 'rules.txt'; % ��������ļ�

%% ����ת������ ��������ת��Ϊ0,1�����Զ��庯��
[transactions,code] = trans2matrix(inputfile,outputfile,','); 

%% ����Apriori���������㷨���Զ��庯��
[Rules,FreqItemsets] = findRules(transactions, minSup, minConf, nRules, sortFlag, code, rulefile);

disp('Apriori�㷨�ھ��Ʒ��������������ɣ�');