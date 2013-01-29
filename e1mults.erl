-module(e1mults).
-export([main/0]).

% If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
% The sum of these multiples is 23.
% Find the sum of all the multiples of 3 or 5 below 1000.

mult(N) -> mult(N,0).

mult(N,Sum) when N<3 -> Sum;
mult(N,Sum) when N rem 5 == 0 -> mult(N-1,Sum+N);
mult(N,Sum) when N rem 3 == 0 -> mult(N-1,Sum+N);
mult(N,Sum) -> mult(N-1,Sum).

main() ->
  N=mult(999),
	io:fwrite("~p~n",[N]).

%> e1mults:main().
%233168
