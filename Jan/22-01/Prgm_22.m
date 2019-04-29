function RH = twentytwo(td,tw)
    F = @(C) C + 1.8*32;
    fd=F(td);
    fw=F(tw);
    VP = exp((16.78*fw-116.9)/(fw+237.3))-0.066858*(1+0.00115*fw)*(fd-fw);
    SVP = exp((16.78*fd-116.9)/(fd+237.3));
    RH=VP/SVP*100;
end