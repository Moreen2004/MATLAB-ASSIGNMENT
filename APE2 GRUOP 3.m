clc;
clear;
APE2Students=readtable('C:\Users\User\Desktop\APE 2\GROUP3.xlsx');
disp(APE2Students);

APE2Students.Properties,VariableNames={'NAME','GENDER','REGISTRATIONNo','Age','Tribe','Status','Hostel','association','FRIENDS'}
writetable(APE2Students,'GROUP3.xlsx');


figure;
bar(APE2Students.Age);
title('AGE OF STUDENTS');
xlabel('STUDENTS');
ylabel('AGE');