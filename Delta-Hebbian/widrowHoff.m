function [w]=widrowHoff(xtrain,ytrain,w0,eta)
%x(1),x(2)....x(n) as row vector
%w as col vector

w=w0;
norm1=10e4; tol=10e-5;
while (norm1>tol) 
    w1=w;
    for i=1:size(xtrain,1)
            net(i)=w'*xtrain(i,:)';
            fnet(i)=net(i);
            fdnet(i)=1;
            r(i)=(ytrain(i)-fnet(i))*fdnet(i);
            w = w+eta*r(i)*xtrain(i,:)';
    end
    norm1=norm(w1-w);
end

end
