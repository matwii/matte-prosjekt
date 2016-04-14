classdef vars
    %VARS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        E=1.3*10^10; %Youngs modulus
        L=2; %Lengde
        d = 0.03; %Diameter
        w = 0.3; %Bredde
        g=-9.81; %Gravitasjon
        D = 480; %Tetthet
        f =  D*d*g*w;
    end
    
    methods
    end
    
end

