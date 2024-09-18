{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red17\green23\blue31;\red255\green255\blue254;\red0\green0\blue0;
\red66\green147\blue62;\red178\green113\blue6;\red71\green91\blue98;}
{\*\expandedcolortbl;;\cssrgb\c8235\c11765\c16078;\cssrgb\c100000\c100000\c99608;\cssrgb\c0\c0\c0;
\cssrgb\c31373\c63137\c30980;\cssrgb\c75686\c51765\c392;\cssrgb\c34510\c43137\c45882;}
\margl1440\margr1440\vieww29200\viewh17840\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 // Importing Student Information\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LOAD\cf2 \strokec2  \cf5 \strokec5 CSV\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  \cf5 \strokec5 HEADERS\cf2 \strokec2  \cf5 \strokec5 FROM\cf2 \strokec2  \cf6 \strokec6 'https://www.dropbox.com/scl/fi/528c4oadlq9mwrdnsamci/students.csv?rlkey=tla1gah01pk8bz4wttcdxqssi&dl=1'\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 student\cf7 \strokec7 :\cf2 \strokec2 Student \cf7 \strokec7 \{\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 id\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 snum\cf7 \strokec7 ),\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 ssn\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 ssn\cf7 \strokec7 ),\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 fullName\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf5 \strokec5 name\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 gender\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 gender\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 birthDate\cf7 \strokec7 :\cf2 \strokec2  date\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 dob\cf7 \strokec7 ),\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 currentAddress\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 c_addr\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 currentPhone\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 c_phone\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 permanentAddress\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 p_addr\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 permanentPhone\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 p_phone\cf0 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 \});\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Importing Department Details\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LOAD\cf2 \strokec2  \cf5 \strokec5 CSV\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  \cf5 \strokec5 HEADERS\cf2 \strokec2  \cf5 \strokec5 FROM\cf2 \strokec2  \cf6 \strokec6 'https://www.dropbox.com/scl/fi/rc80l7w1rxjqxxi21f5ak/departments.csv?rlkey=7qiy2tcsnfum1vhkeqvjsg54a&dl=1'\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 dept\cf7 \strokec7 :\cf2 \strokec2 Department \cf7 \strokec7 \{\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 code\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 dcode\cf7 \strokec7 ),\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 departmentName\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf5 \strokec5 name\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 contactNumber\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 phone\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 associatedCollege\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 college\cf0 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 \});\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Importing Degree Information\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LOAD\cf2 \strokec2  \cf5 \strokec5 CSV\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  \cf5 \strokec5 HEADERS\cf2 \strokec2  \cf5 \strokec5 FROM\cf2 \strokec2  \cf6 \strokec6 'https://www.dropbox.com/scl/fi/hijen8a9s34f5axien745/degrees.csv?rlkey=lzrat36ihevnyzy6zgkqvrsfj&dl=1'\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 degree\cf7 \strokec7 :\cf2 \strokec2 Degree \cf7 \strokec7 \{\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 degreeName\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf5 \strokec5 name\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 academicLevel\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 level\cf0 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 \})\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  degree\cf7 \strokec7 ,\cf2 \strokec2 row \cf5 \strokec5 MATCH\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 dept\cf7 \strokec7 :\cf2 \strokec2 Department\cf7 \strokec7 \{\cf2 \strokec2 code\cf7 \strokec7 :\cf2 \strokec2 toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 dcode\cf7 \strokec7 )\})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 dept\cf7 \strokec7 )-[:\cf2 \strokec2 OFFERS\cf7 \strokec7 ]->(\cf2 \strokec2 degree\cf7 \strokec7 );\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Importing Course Data\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LOAD\cf2 \strokec2  \cf5 \strokec5 CSV\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  \cf5 \strokec5 HEADERS\cf2 \strokec2  \cf5 \strokec5 FROM\cf2 \strokec2  \cf6 \strokec6 'https://www.dropbox.com/scl/fi/yj8b4spn6uuju7sys80l5/courses.csv?rlkey=ilhhuz6kftcq50zw8m76dyhol&dl=1'\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 course\cf7 \strokec7 :\cf2 \strokec2 Course \cf7 \strokec7 \{\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 courseId\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 number\cf7 \strokec7 ),\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 title\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf5 \strokec5 name\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 overview\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 description\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 credits\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 credithours\cf7 \strokec7 ),\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 difficulty\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 level\cf0 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 \})\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  course\cf7 \strokec7 ,\cf2 \strokec2 row \cf5 \strokec5 MATCH\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 dept\cf7 \strokec7 :\cf2 \strokec2 Department\cf7 \strokec7 \{\cf2 \strokec2 code\cf7 \strokec7 :\cf2 \strokec2 toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 dcode\cf7 \strokec7 )\})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 dept\cf7 \strokec7 )-[:\cf2 \strokec2 PROVIDES_COURSE\cf7 \strokec7 ]->(\cf2 \strokec2 course\cf7 \strokec7 );\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Importing Registration Records\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LOAD\cf2 \strokec2  \cf5 \strokec5 CSV\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  \cf5 \strokec5 HEADERS\cf2 \strokec2  \cf5 \strokec5 FROM\cf2 \strokec2  \cf6 \strokec6 'https://www.dropbox.com/scl/fi/jih269kip8hfxks3682l0/register.csv?rlkey=1u5ruom1brm67d9c11wpv2ox9&dl=1'\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 registration\cf7 \strokec7 :\cf2 \strokec2 Registered \cf7 \strokec7 \{\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 enrollmentTime\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 regtime\cf7 \strokec7 ,\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 achievedGrade\cf7 \strokec7 :\cf2 \strokec2  toFloat\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 grade\cf7 \strokec7 )\})\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  registration\cf7 \strokec7 ,\cf2 \strokec2 row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 student\cf7 \strokec7 :\cf2 \strokec2 Student \cf7 \strokec7 \{\cf2 \strokec2 id\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 snum\cf7 \strokec7 )\})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 student\cf7 \strokec7 )-[:\cf2 \strokec2 ENROLLED_IN\cf7 \strokec7 ]->(\cf2 \strokec2 registration\cf7 \strokec7 )\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  registration\cf7 \strokec7 ,\cf2 \strokec2 row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 course\cf7 \strokec7 :\cf2 \strokec2 Course \cf7 \strokec7 \{\cf2 \strokec2 courseId\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 course_number\cf7 \strokec7 )\})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 registration\cf7 \strokec7 )-[:\cf2 \strokec2 ENROLLED_IN\cf7 \strokec7 ]->(\cf2 \strokec2 course\cf7 \strokec7 );\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Importing Major Specializations\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LOAD\cf2 \strokec2  \cf5 \strokec5 CSV\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  \cf5 \strokec5 HEADERS\cf2 \strokec2  \cf5 \strokec5 FROM\cf2 \strokec2  \cf6 \strokec6 'https://www.dropbox.com/scl/fi/ye9imcn7kmasnpch4t6u9/major.csv?rlkey=hx1sgsmkih81ehr8juewai9yo&dl=1'\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 major\cf7 \strokec7 :\cf2 \strokec2 Major\cf7 \strokec7 )\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  major\cf7 \strokec7 ,\cf2 \strokec2 row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 student\cf7 \strokec7 :\cf2 \strokec2 Student \cf7 \strokec7 \{\cf2 \strokec2 id\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 snum\cf7 \strokec7 )\})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 student\cf7 \strokec7 )-[:\cf2 \strokec2 MAJOR_IN\cf7 \strokec7 ]->(\cf2 \strokec2 major\cf7 \strokec7 )\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  major\cf7 \strokec7 ,\cf2 \strokec2 row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 degree\cf7 \strokec7 :\cf2 \strokec2 Degree \cf7 \strokec7 \{\cf2 \strokec2 academicLevel\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 level\cf7 \strokec7 ,\cf2 \strokec2  degreeName\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf5 \strokec5 name\cf7 \strokec7 \})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 major\cf7 \strokec7 )-[:\cf2 \strokec2 MAJOR_IN\cf7 \strokec7 ]->(\cf2 \strokec2 degree\cf7 \strokec7 );\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Importing Minor Concentrations\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LOAD\cf2 \strokec2  \cf5 \strokec5 CSV\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  \cf5 \strokec5 HEADERS\cf2 \strokec2  \cf5 \strokec5 FROM\cf2 \strokec2  \cf6 \strokec6 'https://www.dropbox.com/scl/fi/ckwqased76dedamflxv95/minor.csv?rlkey=z8zyl5ld7reip0a3tg70tjbk8&dl=1'\cf2 \strokec2  \cf5 \strokec5 AS\cf2 \strokec2  row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 minor\cf7 \strokec7 :\cf2 \strokec2 Minor\cf7 \strokec7 )\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  minor\cf7 \strokec7 ,\cf2 \strokec2 row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 student\cf7 \strokec7 :\cf2 \strokec2 Student \cf7 \strokec7 \{\cf2 \strokec2 id\cf7 \strokec7 :\cf2 \strokec2  toInteger\cf7 \strokec7 (\cf2 \strokec2 row\cf7 \strokec7 .\cf2 \strokec2 snum\cf7 \strokec7 )\})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 student\cf7 \strokec7 )-[:\cf2 \strokec2 MINOR_IN\cf7 \strokec7 ]->(\cf2 \strokec2 minor\cf7 \strokec7 )\cf2 \strokec2  \cf5 \strokec5 WITH\cf2 \strokec2  minor\cf7 \strokec7 ,\cf2 \strokec2 row\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 MATCH\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 degree\cf7 \strokec7 :\cf2 \strokec2 Degree \cf7 \strokec7 \{\cf2 \strokec2 academicLevel\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf2 \strokec2 level\cf7 \strokec7 ,\cf2 \strokec2  degreeName\cf7 \strokec7 :\cf2 \strokec2  row\cf7 \strokec7 .\cf5 \strokec5 name\cf7 \strokec7 \})\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 minor\cf7 \strokec7 )-[:\cf2 \strokec2 MINOR_IN\cf7 \strokec7 ]->(\cf2 \strokec2 degree\cf7 \strokec7 );\
\
\cf0 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 // Constraint for Students to ensure unique student number\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf5 \strokec5 CONSTRAINT\cf2 \strokec2  \cf5 \strokec5 IF\cf2 \strokec2  \cf5 \strokec5 NOT\cf2 \strokec2  \cf5 \strokec5 EXISTS\cf2 \strokec2  \cf5 \strokec5 FOR\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 student\cf7 \strokec7 :\cf2 \strokec2 Student\cf7 \strokec7 )\cf2 \strokec2  REQUIRE student\cf7 \strokec7 .\cf2 \strokec2 id \cf5 \strokec5 IS\cf2 \strokec2  \cf5 \strokec5 UNIQUE\cf7 \strokec7 ;\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Constraint for Department to ensure unique department code\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf5 \strokec5 CONSTRAINT\cf2 \strokec2  \cf5 \strokec5 IF\cf2 \strokec2  \cf5 \strokec5 NOT\cf2 \strokec2  \cf5 \strokec5 EXISTS\cf2 \strokec2  \cf5 \strokec5 FOR\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 dept\cf7 \strokec7 :\cf2 \strokec2 Department\cf7 \strokec7 )\cf2 \strokec2  REQUIRE dept\cf7 \strokec7 .\cf2 \strokec2 code \cf5 \strokec5 IS\cf2 \strokec2  \cf5 \strokec5 UNIQUE\cf7 \strokec7 ;\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Constraint for Course to ensure unique course number\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf5 \strokec5 CONSTRAINT\cf2 \strokec2  \cf5 \strokec5 IF\cf2 \strokec2  \cf5 \strokec5 NOT\cf2 \strokec2  \cf5 \strokec5 EXISTS\cf2 \strokec2  \cf5 \strokec5 FOR\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 course\cf7 \strokec7 :\cf2 \strokec2 Course\cf7 \strokec7 )\cf2 \strokec2  REQUIRE course\cf7 \strokec7 .\cf2 \strokec2 courseId \cf5 \strokec5 IS\cf2 \strokec2  \cf5 \strokec5 UNIQUE\cf7 \strokec7 ;\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Constraint for Major to ensure it is distinct\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf5 \strokec5 CONSTRAINT\cf2 \strokec2  \cf5 \strokec5 IF\cf2 \strokec2  \cf5 \strokec5 NOT\cf2 \strokec2  \cf5 \strokec5 EXISTS\cf2 \strokec2  \cf5 \strokec5 FOR\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 major\cf7 \strokec7 :\cf2 \strokec2 Major\cf7 \strokec7 )\cf2 \strokec2  REQUIRE major\cf7 \strokec7 .\cf2 \strokec2 degreeName \cf5 \strokec5 IS\cf2 \strokec2  \cf5 \strokec5 UNIQUE\cf7 \strokec7 ;\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Constraint for Minor to ensure it is distinct\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 CREATE\cf2 \strokec2  \cf5 \strokec5 CONSTRAINT\cf2 \strokec2  \cf5 \strokec5 IF\cf2 \strokec2  \cf5 \strokec5 NOT\cf2 \strokec2  \cf5 \strokec5 EXISTS\cf2 \strokec2  \cf5 \strokec5 FOR\cf2 \strokec2  \cf7 \strokec7 (\cf2 \strokec2 minor\cf7 \strokec7 :\cf2 \strokec2 Minor\cf7 \strokec7 )\cf2 \strokec2  REQUIRE minor\cf7 \strokec7 .\cf2 \strokec2 degreeName \cf5 \strokec5 IS\cf2 \strokec2  \cf5 \strokec5 UNIQUE\cf7 \strokec7 ;\cf0 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 // Show all constraints\cf0 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SHOW\cf2 \strokec2  \cf5 \strokec5 CONSTRAINTS\cf7 \strokec7 ;\cf0 \cb1 \strokec4 \
\
}