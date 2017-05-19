function [ clusters ] = clusterFrames( cc, nOfCluster )
%[ clusters ] = clusterFrames( cc, nOfCluster )
%
% INPUT
%          cc: Cepstral coefficients of each frame
%  nOfCluster: # of cluster (audio classes)
% 
% OUTPUT
%    clusters: Cluster index for each frame
%
% ------------------------------------------------------------------------
%
% AUTOMATIC ANNOTATION OF TIMBRE VARIATION
% FOR MONOPHONIC MUSICAL INSTRUMENTS
% Goffredo Haus, Luca A. Ludovico, and Giorgio Presti
% {haus,ludovico,presti}@unimi.it
%
% clusterFrames.m: Cluster frames based on cepstral coefficients
% Copyright (C) 2017 - Laboratorio di Informatica Musicale
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>
%

    tree = linkage(cc,'ward');
    % figure
    % [~, cluster] = dendrogram(tree,nOfCluster);
    clusters = cluster(tree,'MAXCLUST',nOfCluster) ;

end

