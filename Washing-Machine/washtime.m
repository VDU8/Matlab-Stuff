h=readfis('WashingMachine.fis');
a=input('Types Of Clothes=');
b=input('Types Of Dirt=');
c=input('Types Of Detergent=');
d=input('Mass Of Clothes=');
e=input('Water Level=');
f=input('Temperature=');
i=evalfis([a b c d e f ], h);
disp(['Total Washing time in mins:',num2str(i)]);