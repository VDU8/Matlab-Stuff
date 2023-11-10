function [w]=Delta(xtrain,ytrain,w0,eta)
%x(1),x(2)....x(n) as col vector
%w as col vector

Delta(0,0,0.01);
norm1=10e4; tol=10e-4;
    while (norm1>tol)
        
        w1=w;
        
        for i=1:size(xtrain,1)
            net(i)=w'*xtrain(i,:)';
            fnet(i)=-1+2/(1+exp(-net(i)));
            fdnet(i)=0.5*(1-fnet(i)^2);
            r(i)=(ytrain(i)-fnet(i))*fdnet(i);
            w = w+eta*r(i)*xtrain(i,:)';
        end 

        norm1=norm(w1-w);
    
    end
    
end
