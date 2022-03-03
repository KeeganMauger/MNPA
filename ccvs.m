function ccvs(nd1,nd2,ni1,ni2,val)
% Adds the stamp of a dependent current-controlled 
% voltage-source(CCVS)to the matrices in circuit 
% representation.
%
%   ni1 O-------|                  |----------o nd1
%               |                  |
%               |                 /+\
%               |              | /   \    Vnd1-Vnd2 = val*(Ij)
%           Ij  V           Ik | \   /
%               |              V  \-/ 
%               |                  |
%   ni2 O-------|                  |----------o nd2
%
%  (1) "nd1 & nd2" are the nodes across the dependent
%                  voltage source.
%  (2) "ni1 & ni2" are the nodes corresponding to the 
%                  controller current
%
%   nd1: (+) node   \
%   nd2: (-) node   |----->  Vnd1-Vnd2 = val*(Ij)
%   ni1: (+) node   |
%   ni2: (-) node   /
%   F: alpha, ohms
%---------------------------------------------------------------
global G b C 

end

