{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red17\green23\blue31;\red255\green255\blue254;\red0\green0\blue0;
\red66\green147\blue62;\red71\green91\blue98;\red178\green113\blue6;\red14\green112\blue174;}
{\*\expandedcolortbl;;\cssrgb\c8235\c11765\c16078;\cssrgb\c100000\c100000\c99608;\cssrgb\c0\c0\c0;
\cssrgb\c31373\c63137\c30980;\cssrgb\c34510\c43137\c45882;\cssrgb\c75686\c51765\c392;\cssrgb\c392\c51765\c73725;}
\margl1440\margr1440\vieww29200\viewh17840\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 //Query 1\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 s\cf6 \strokec6 :\cf2 \strokec2 Student \cf6 \strokec6 \{\cf2 \strokec2 fullName\cf6 \strokec6 :\cf2 \strokec2  \cf7 \strokec7 "Becky"\cf6 \strokec6 \})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  s\cf6 \strokec6 .\cf2 \strokec2 id \cf5 \strokec5 AS\cf2 \strokec2  Student_Number\cf6 \strokec6 ,\cf2 \strokec2  s\cf6 \strokec6 .\cf2 \strokec2 ssn \cf5 \strokec5 AS\cf2 \strokec2  Student_SSN\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 //Query 2\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 s\cf6 \strokec6 :\cf2 \strokec2 Student \cf6 \strokec6 \{\cf2 \strokec2 ssn\cf6 \strokec6 :\cf2 \strokec2  \cf8 \strokec8 123097834\cf6 \strokec6 \})-[:\cf2 \strokec2 MAJOR_IN\cf6 \strokec6 ]->(\cf2 \strokec2 major\cf6 \strokec6 :\cf2 \strokec2 Major\cf6 \strokec6 )-[:\cf2 \strokec2 MAJOR_IN\cf6 \strokec6 ]->(\cf2 \strokec2 degree\cf6 \strokec6 :\cf2 \strokec2 Degree\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  degree\cf6 \strokec6 .\cf2 \strokec2 degreeName \cf5 \strokec5 AS\cf2 \strokec2  MajorName\cf6 \strokec6 ,\cf2 \strokec2  degree\cf6 \strokec6 .\cf2 \strokec2 academicLevel \cf5 \strokec5 AS\cf2 \strokec2  MajorLevel\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 //Query 3\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 dept\cf6 \strokec6 :\cf2 \strokec2 Department \cf6 \strokec6 \{\cf2 \strokec2 departmentName\cf6 \strokec6 :\cf2 \strokec2  \cf7 \cb3 \strokec7 "Computer Science"\cf6 \cb3 \strokec6 \})-[:\cf2 \strokec2 PROVIDES_COURSE\cf6 \strokec6 ]->(\cf2 \strokec2 course\cf6 \strokec6 :\cf2 \strokec2 Course\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  course\cf6 \strokec6 .\cf2 \strokec2 title \cf5 \strokec5 AS\cf2 \strokec2  CourseName\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
//Query 4\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 dept\cf6 \strokec6 :\cf2 \strokec2 Department \cf6 \strokec6 \{\cf2 \strokec2 departmentName\cf6 \strokec6 :\cf2 \strokec2  \cf7 \strokec7 "Computer Science"\cf6 \strokec6 \})-[:\cf2 \strokec2 OFFERS\cf6 \strokec6 ]->(\cf2 \strokec2 degree\cf6 \strokec6 :\cf2 \strokec2 Degree\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  degree\cf6 \strokec6 .\cf2 \strokec2 degreeName \cf5 \strokec5 AS\cf2 \strokec2  DegreeName\cf6 \strokec6 ,\cf2 \strokec2  degree\cf6 \strokec6 .\cf2 \strokec2 academicLevel \cf5 \strokec5 AS\cf2 \strokec2  DegreeLevel\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf0 \strokec4 \
\
//Query 5\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )-[:\cf2 \strokec2 MINOR_IN\cf6 \strokec6 ]->(\cf2 \strokec2 minor\cf6 \strokec6 :\cf2 \strokec2 Minor\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  StudentName\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 //Query 6\
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )-[:\cf2 \strokec2 MINOR_IN\cf6 \strokec6 ]->(\cf2 \strokec2 minor\cf6 \strokec6 :\cf2 \strokec2 Minor\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  \cf5 \strokec5 count\cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 )\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  MinorCount\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
\
\
//Query 7\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )-[:\cf2 \strokec2 ENROLLED_IN\cf6 \strokec6 ]->(\cf2 \strokec2 registration\cf6 \strokec6 :\cf2 \strokec2 Registered\cf6 \strokec6 )-[:\cf2 \strokec2 ENROLLED_IN\cf6 \strokec6 ]->(\cf2 \strokec2 course\cf6 \strokec6 :\cf2 \strokec2 Course \cf6 \strokec6 \{\cf2 \strokec2 title\cf6 \strokec6 :\cf2 \strokec2  \cf7 \strokec7 "Algorithm"\cf6 \strokec6 \})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  StudentName\cf6 \strokec6 ,\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 id \cf5 \strokec5 AS\cf2 \strokec2  StudentNumber\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
\
//Query 8\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  StudentName\cf6 \strokec6 ,\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 id \cf5 \strokec5 AS\cf2 \strokec2  StudentNumber\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 birthDate \cf5 \strokec5 ASC\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LIMIT\cf2 \strokec2  \cf8 \cb3 \strokec8 1\cf6 \cb3 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
\
//Query 9\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  StudentName\cf6 \strokec6 ,\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 id \cf5 \strokec5 AS\cf2 \strokec2  StudentNumber\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf2 \strokec2  \cf5 \strokec5 BY\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 birthDate \cf5 \strokec5 DESC\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LIMIT\cf2 \strokec2  \cf8 \cb3 \strokec8 1\cf6 \cb3 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
\
//Query 10\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 CONTAINS\cf2 \strokec2  \cf7 \strokec7 'n'\cf2 \strokec2  \cf5 \strokec5 OR\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 CONTAINS\cf2 \strokec2  \cf7 \strokec7 'N'\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  StudentName\cf6 \strokec6 ,\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 id \cf5 \strokec5 AS\cf2 \strokec2  StudentNumber\cf6 \strokec6 ,\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 ssn \cf5 \strokec5 AS\cf2 \strokec2  StudentSSN\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
\
//Query 11\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf2 \strokec2  \cf5 \strokec5 NOT\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 CONTAINS\cf2 \strokec2  \cf7 \strokec7 'n'\cf2 \strokec2  \cf5 \strokec5 AND\cf2 \strokec2  \cf5 \strokec5 NOT\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 CONTAINS\cf2 \strokec2  \cf7 \strokec7 'N'\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  StudentName\cf6 \strokec6 ,\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 id \cf5 \strokec5 AS\cf2 \strokec2  StudentNumber\cf6 \strokec6 ,\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 ssn \cf5 \strokec5 AS\cf2 \strokec2  StudentSSN\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
//Query 12\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 course\cf6 \strokec6 :\cf2 \strokec2 Course\cf6 \strokec6 )<-[:\cf2 \strokec2 ENROLLED_IN\cf6 \strokec6 ]-(\cf2 \strokec2 registration\cf6 \strokec6 :\cf2 \strokec2 Registered\cf6 \strokec6 )<-[:\cf2 \strokec2 ENROLLED_IN\cf6 \strokec6 ]-(\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  course\cf6 \strokec6 .\cf2 \strokec2 courseId \cf5 \strokec5 AS\cf2 \strokec2  CourseNumber\cf6 \strokec6 ,\cf2 \strokec2  course\cf6 \strokec6 .\cf2 \strokec2 title \cf5 \strokec5 AS\cf2 \strokec2  CourseName\cf6 \strokec6 ,\cf2 \strokec2  \cf5 \strokec5 count\cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 )\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  RegisteredStudents\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
\
//Query 13\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student\cf6 \strokec6 )-[:\cf2 \strokec2 ENROLLED_IN\cf6 \strokec6 ]->(\cf2 \strokec2 registration\cf6 \strokec6 :\cf2 \strokec2 Registered \cf6 \strokec6 \{\cf2 \strokec2 enrollmentTime\cf6 \strokec6 :\cf2 \strokec2  \cf7 \strokec7 "Fall2020"\cf6 \strokec6 \})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  StudentName\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
//Query 14\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 dept\cf6 \strokec6 :\cf2 \strokec2 Department \cf6 \strokec6 \{\cf2 \strokec2 departmentName\cf6 \strokec6 :\cf2 \strokec2  \cf7 \strokec7 "Computer Science"\cf6 \strokec6 \})-[:\cf2 \strokec2 PROVIDES_COURSE\cf6 \strokec6 ]->(\cf2 \strokec2 course\cf6 \strokec6 :\cf2 \strokec2 Course\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  course\cf6 \strokec6 .\cf2 \strokec2 courseId \cf5 \strokec5 AS\cf2 \strokec2  CourseNumber\cf6 \strokec6 ,\cf2 \strokec2  course\cf6 \strokec6 .\cf2 \strokec2 title \cf5 \strokec5 AS\cf2 \strokec2  CourseName\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
\pard\pardeftab720\partightenfactor0
\cf0 \
//Query 15\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \outl0\strokewidth0 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 dept\cf6 \strokec6 :\cf2 \strokec2 Department\cf6 \strokec6 )-[:\cf2 \strokec2 PROVIDES_COURSE\cf6 \strokec6 ]->(\cf2 \strokec2 course\cf6 \strokec6 :\cf2 \strokec2 Course\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf2 \strokec2  dept\cf6 \strokec6 .\cf2 \strokec2 departmentName \cf5 \strokec5 IN\cf2 \strokec2  \cf6 \strokec6 [\cf7 \strokec7 "Computer Science"\cf6 \strokec6 ,\cf2 \strokec2  \cf7 \strokec7 "Landscape Architect"\cf6 \strokec6 ]\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  course\cf6 \strokec6 .\cf2 \strokec2 courseId \cf5 \strokec5 AS\cf2 \strokec2  CourseNumber\cf6 \strokec6 ,\cf2 \strokec2  course\cf6 \strokec6 .\cf2 \strokec2 title \cf5 \strokec5 AS\cf2 \strokec2  CourseName\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \outl0\strokewidth0 \
}