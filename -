-module(e3prim).
-export([main/0]).

% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?

prim(N) when N<2 -> [];
prim(N) when N rem 2==0 ->fac(N,3,2,1);
prim(N) ->fac(N,3,[],1).

% +2 bc only odds will be factors
% lets keep a multiplying accumulator, when this exceeds Bg return latests factor, Fc.
fac(Bg,Sm,Fc,_Ml) when Sm*Sm > Bg -> Fc;
fac(Bg,_Sm,Fc,Ml) when Ml >= Bg -> Fc;
fac(Bg,Sm,_Fc,Ml) when Bg rem Sm==0 -> 
	% io:fwrite(" ~p fac ~p m ~p ~n",[Bg,Sm,Ml]),
	fac(Bg,Sm+2,Sm,Ml*Sm);
fac(Bg,Sm,Fc,Ml) -> fac(Bg,Sm+2,Fc,Ml).

main() ->
	% io:fwrite("~p ~n",[prim(2)]),
	% io:fwrite("~p ~n",[prim(4)]),
	% io:fwrite("~p ~n",[prim(13195)]).
	io:fwrite("~p ~n",[prim(600851475143)]).

% wrong
% 13195 fac 5 
%  13195 fac 7 
%  13195 fac 13 
%  13195 fac 29 
%  13195 fac 35 
%  13195 fac 65 
%  13195 fac 91 
% 91 
%  600851475143 fac 71 
%  600851475143 fac 839 
%  600851475143 fac 1471 
%  600851475143 fac 6857 % the right ans
%  600851475143 fac 59569 
%  600851475143 fac 104441 
%  600851475143 fac 486847 
% 486847 

% right
%  600851475143 fac 71 m 1 
%  600851475143 fac 839 m 71 
%  600851475143 fac 1471 m 59569 
%  600851475143 fac 6857 m 87625999 
% 6857 
% Congratulations, the answer you gave to problem 3 is correct.
% You are the 159528th person to have solved this problem.