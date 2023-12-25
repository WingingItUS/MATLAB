% L24 Flower scoring Problem
function [] = R308_L24_Flower_Scoring()

clc
%scores:

E1 = [80, 70, 90];

E2 = [92, 85, 89];

E3 = [88, 78, 85];

E4 = [95, 83, 75];

E5 = [72, 61, 54];

E6 = [62, 87, 98];

E7 = [58, 98, 89];

E8 = [99, 83, 78];

E9 = [69, 94, 67];


% CHagne for later Means should be for average of weighted scores below!!
averageEs = [mean(E1),mean(E2),mean(E3),mean(E4),mean(E5),mean(E6),mean(E7),mean(E8),mean(E9)];
AverageAll = mean(averageEs);



% SCORE WEIGHTS
scoreweights = [.39;.35;.26];
weightscheck = sum(scoreweights);

%Weights Check 
if weightscheck ~= 1.0 
    disp('The weights do not add up to 100%')
    return
end

%Conformability check

if size(E1,2) ~= size(scoreweights,1)
    disp('E1 is not conformable with scoring weights')
    return
end

if size(E2,2) ~= size(scoreweights,1)
    disp('E2 is not conformable with scoring weights')
    return
end

if size(E3,2) ~= size(scoreweights,1)
    disp('E3 is not conformable with scoring weights')
    return
end

if size(E4,2) ~= size(scoreweights,1)
    disp('E4 is not conformable with scoring weights')
    return
end

if size(E5,2) ~= size(scoreweights,1)
    disp('E5 is not conformable with scoring weights')
    return
end

if size(E6,2) ~= size(scoreweights,1)
    disp('E6 is not conformable with scoring weights')
    return
end

if size(E7,2) ~= size(scoreweights,1)
    disp('E7 is not conformable with scoring weights')
    return
end

if size(E8,2) ~= size(scoreweights,1)
    disp('E8 is not conformable with scoring weights')
    return
end

if size(E9,2) ~= size(scoreweights,1)
    disp('E9 is not conformable with scoring weights')
    return
end


E1Score = E1 * scoreweights; 
E2Score = E2 * scoreweights;
E3Score = E3 * scoreweights;
E4Score = E4 * scoreweights;
E5Score = E5 * scoreweights;
E6Score = E6 * scoreweights;
E7Score = E7 * scoreweights;
E8Score = E8 * scoreweights;
E9Score = E9 * scoreweights;

WaverageEs = [mean(E1Score),mean(E2Score),mean(E3Score),mean(E4Score),mean(E5Score), mean(E6Score),mean(E7Score),mean(E8Score),mean(E9Score)];
WAverageAll = mean(WaverageEs);

 fprintf("The Flower scores are: \nE1 = %0.2f\nE2 = %0.2f\nE3 = %0.2f\n" + ...
     "E4 = %0.2f\nE5 = %0.2f\nE6 = %0.2f\nE7 = %0.2f\nE8 = %0.2f\n" + ...
     "E9 = %0.2f\n",E1Score,E2Score,E3Score,E4Score,E5Score,E6Score,E7Score, ...
     E8Score,E9Score)
 fprintf("The overall average of scores is: %0.2f%%",WAverageAll)