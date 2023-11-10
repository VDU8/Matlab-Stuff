clc;
n = input("Input Vectors");
m = input("Size of Input Vectors");
a = zeros(m,n);
for j=1:n
for i=1:m
a(i,j) = input(['Enter vector ' num2str(j) ' element ' num2str(i)]);
end
end
disp("ENTER WEIGHT VECTOR");
w = zeros(m,1);
for i=1:m
w(i,1)=input(['Enter ' num2str(i) 'th element:']);
end
disp("Self Desired Vector");
d = zeros(n,1);
for i=1:n
d(i,1)=input(['Enter ' num2str(i) 'th element:']);
end
iter = input("Iterations");
disp('Choose the function :')
disp('1. Bipolar continous')
disp('2. Unipolar continous')
option = input('Select a Function');
l = input('Enter lambda');
c = input('Enter Learning Factor Rate');
for j=1:iter
disp("Iteration no " + j);
for i=1:n
temp = w;
net = transpose(w)*a(:,i);
switch(option)
case 1
fnet = 2*UnipolarCont(net,l)-1;
dfnet = (l/2)*(1-(fnet*fnet));
w = w + c*(d(i,1) - fnet)*dfnet* a(:,i);
case 2
fnet = UnipolarCont(net,l);
dfnet = l*fnet*(1-fnet);
w = w + c*(d(i,1) - fnet)*dfnet* a(:,i);
end

if temp == w
disp("No change in Weight");
j = iter + 1;
break;
end
end
end
disp('Final Weight Vector :');
disp(w);
function ret = UnipolarCont(net,lambda)
temp = 1 + exp(-lambda*net);
ret = 1/temp;
end