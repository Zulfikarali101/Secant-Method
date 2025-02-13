%Metode Secant
%Zulfikar Ali Ibadurrahman
%12918030

Vm=4;
g=10;
x=15;
Hs=(1/g)*(Vm/(0.49*sin(2*x))^2);

a=input('Nilai Xn: ');
b=input('Nilai Xn-1: ');
tol=input('Masukkan toleransi: ');
itermax=input('Masukkan iterasi maksimal: ');
i=1;

while i<itermax;
    fa=(0.49*(10^(1/2))*(a^(1/2)))-8;
    fb=(0.49*(10^(1/2))*(b^(1/2)))-8;
    c=b-(((b-a)*fb)/(fb-fa));
    if (abs(c-b)/b)<tol
        c=b;
        break
    else
        a=b;
        b=c;
        i=i+1;
    end
end

disp(['Solusi: ',num2str(c)])
disp(['iterasi: ',num2str(i)])
