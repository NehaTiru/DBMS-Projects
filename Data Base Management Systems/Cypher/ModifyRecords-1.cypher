{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red17\green23\blue31;\red255\green255\blue254;\red0\green0\blue0;
\red66\green147\blue62;\red71\green91\blue98;\red14\green112\blue174;\red178\green113\blue6;}
{\*\expandedcolortbl;;\cssrgb\c8235\c11765\c16078;\cssrgb\c100000\c100000\c99608;\cssrgb\c0\c0\c0;
\cssrgb\c31373\c63137\c30980;\cssrgb\c34510\c43137\c45882;\cssrgb\c392\c51765\c73725;\cssrgb\c75686\c51765\c392;}
\margl1440\margr1440\vieww29200\viewh17840\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 // Modify 1: Update the name of the student with ssn 746897816 to "Scott"\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student \cf6 \strokec6 \{\cf2 \strokec2 ssn\cf6 \strokec6 :\cf2 \strokec2  \cf7 \cb3 \strokec7 746897816\cf6 \cb3 \strokec6 \})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SET\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf6 \strokec6 =\cf2 \strokec2  \cf8 \strokec8 "Scott"\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 ssn \cf5 \strokec5 AS\cf2 \strokec2  SSN\cf6 \strokec6 ,\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  StudentName\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Modify 2: Update the degree to "Computer Science" and level to "Master" for a student with ssn 746897816\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 student\cf6 \strokec6 :\cf2 \strokec2 Student \cf6 \strokec6 \{\cf2 \strokec2 ssn\cf6 \strokec6 :\cf2 \strokec2  \cf7 \cb3 \strokec7 746897816\cf6 \cb3 \strokec6 \})-[:\cf2 \strokec2 MAJOR_IN\cf6 \strokec6 ]->(\cf2 \strokec2 major\cf6 \strokec6 :\cf2 \strokec2 Major\cf6 \strokec6 )-[:\cf2 \strokec2 MAJOR_IN\cf6 \strokec6 ]->(\cf2 \strokec2 degree\cf6 \strokec6 :\cf2 \strokec2 Degree\cf6 \strokec6 )\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SET\cf2 \strokec2  degree\cf6 \strokec6 .\cf2 \strokec2 degreeName \cf6 \strokec6 =\cf2 \strokec2  \cf8 \strokec8 "Computer Science"\cf6 \strokec6 ,\cf2 \strokec2  degree\cf6 \strokec6 .\cf2 \strokec2 academicLevel \cf6 \strokec6 =\cf2 \strokec2  \cf8 \strokec8 "Master"\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 RETURN\cf2 \strokec2  student\cf6 \strokec6 .\cf2 \strokec2 fullName \cf5 \strokec5 AS\cf2 \strokec2  Student\cf6 \strokec6 ,\cf2 \strokec2  degree\cf6 \strokec6 .\cf2 \strokec2 academicLevel \cf5 \strokec5 AS\cf2 \strokec2  Major_level\cf6 \strokec6 ,\cf2 \strokec2  degree\cf6 \strokec6 .\cf2 \strokec2 degreeName \cf5 \strokec5 AS\cf2 \strokec2  Degree_name\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Modify 3: Delete the registration record for "Spring2021"\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf6 \strokec6 (\cf2 \strokec2 registration\cf6 \strokec6 :\cf2 \strokec2 Registered \cf6 \strokec6 \{\cf2 \strokec2 enrollmentTime\cf6 \strokec6 :\cf2 \strokec2  \cf8 \strokec8 "Spring2021"\cf6 \strokec6 \})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 DETACH\cf2 \strokec2  \cf5 \strokec5 DELETE\cf2 \strokec2  registration\cf6 \strokec6 ;\cf0 \cb1 \strokec4 \
\
}