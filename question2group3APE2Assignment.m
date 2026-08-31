Grading_Points=readtable('D:\Desktop\redy\grade points.xlsx');
KABENGE_YONA_CHRIS_RESULTS=readtable('D:\Desktop\redy\KABENGE YONA CHRIS results.xlsx');
CUs=KABENGE_YONA_CHRIS_RESULTS.CUs;
RAW_MARKS=KABENGE_YONA_CHRIS_RESULTS.RESULT;
Number_of_Courses=height(KABENGE_YONA_CHRIS_RESULTS);
Allocated_letter_grades=cell(Number_of_Courses,1);
Allocated_grade_points=zeros(Number_of_Courses,1);
for i=1:Number_of_Courses
    mark=RAW_MARKS(i);
    if mark>=80 && mark<=100
        Allocated_letter_grades{i}='A';
        Allocated_grade_points(i)=5.0;
    elseif mark >=75 && mark <=79
        Allocated_letter_grades{i}='B+';
        Allocated_grade_points(i)=4.5;
    elseif mark >=70 && mark<=74 
        Allocated_letter_grades{i}='B';
        Allocated_grade_points(i)=4.0;
    elseif mark>=65 && mark<=69 
        Allocated_letter_grades{i}='C+';
        Allocated_grade_points(i)=3.5;
    elseif mark>=60 && mark<=64
        Allocated_letter_grades{i}='C';
        Allocated_grade_points(i)=3.0;
    elseif mark>=50 && mark<=59
        Allocated_letter_grades{i}='D';
        Allocated_grade_points(i)=2.0;
    elseif mark>=0 && mark<=49 
        Allocated_letter_grades{i}='F';
        Allocated_grade_points(i)=0.0;
    end
end
KABENGE_YONA_CHRIS_RESULTS.AllocatedGrade=Allocated_letter_grades;
KABENGE_YONA_CHRIS_RESULTS.AllocatedPoints=Allocated_grade_points;
disp('===KABENGE_YONA_CHRIS_RESULTS_AND_POINTS===');
disp(KABENGE_YONA_CHRIS_RESULTS);
Total_Quality_Points=sum(Allocated_grade_points.*CUs);
Total_CUs=sum(CUs);
GPA=Total_Quality_Points/Total_CUs;
disp(['Your GPA is:',num2str(GPA,'%.2f')]);
disp('===CGPA===');
has_past=upper(input('Do you have previous semesters to add?(YES/NO):','s'));
if strcmp(has_past,'YES')
    past_points=input('Enter total quality pointsfrom past semester:');
    past_CUs=input('Enter total credit units(CUs) from past semesters:');
    CGPA=(Total_Quality_Points+past_points)/(Total_CUs+past_CUs);
else
    CGPA=GPA;
end
disp(['Your CGAP is:',num2str(CGPA,'%.2F')]);

       


