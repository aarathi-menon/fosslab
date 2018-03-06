#!/bin/bash
pdftotext result_s1.pdf -layout
pdftotext result_s2.pdf -layout
grep -A 1 "MDL16CS" result_s1.txt > s1.txt
grep -A 1 "MDL16CS" result_s2.txt > s2.txt
sed -i 's/MA101(/ /g' s1.txt
sed -i 's/PH100(/ /g' s1.txt
sed -i 's/BE110(/ /g' s1.txt
sed -i 's/BE10105(/ /g' s1.txt
sed -i 's/BE103(/ /g' s1.txt
sed -i 's/EE100(/ /g' s1.txt
sed -i 's/PH110(/ /g' s1.txt
sed -i 's/EE110(/ /g' s1.txt
sed -i 's/CS110(/ /g' s1.txt
sed -i 's/--/ /g' s1.txt
sed -i 's/\,/ /g' s1.txt
sed -i 's/   / /g' s1.txt
sed -i 's/              / /g' s1.txt
sed -i 's/      / /g' s1.txt
tr -d '\040\011\012\015\014'<s1.txt> cs_s1.txt
sed -i 's/MDL/\nMDL/g' cs_s1.txt
sed -i 's/O)/ 10 /g' cs_s1.txt
sed -i 's/A+)/ 9 /g' cs_s1.txt
sed -i 's/A)/ 8.5 /g' cs_s1.txt
sed -i 's/B+)/ 8 /g' cs_s1.txt
sed -i 's/B)/ 7 /g' cs_s1.txt
sed -i 's/C)/ 6 /g' cs_s1.txt
sed -i 's/P)/ 5 /g' cs_s1.txt
sed -i 's/F)/ 0 /g' cs_s1.txt
awk '{printf($1" "($2 * 4 + $3 * 4 + $4 * 3 + $5 * 3 + $6 * 3 + $7 * 3 + $8 * 1 + $9 * 1 + $10 * 1)/23)}' cs_s1.txt > temp1.txt
sed -i 's/MDL/\nMDL/g' temp1.txt
sed -i 's/MA102(/ /g' s2.txt
sed -i 's/CY100(/ /g' s2.txt
sed -i 's/BE100(/ /g' s2.txt
sed -i 's/EC100(/ /g' s2.txt
sed -i 's/BE102(/ /g' s2.txt
sed -i 's/CS100(/ /g' s2.txt
sed -i 's/CY110(/ /g' s2.txt
sed -i 's/EC110(/ /g' s2.txt
sed -i 's/CS120(/ /g' s2.txt
sed -i 's/--/ /g' s2.txt
sed -i 's/\,/ /g' s2.txt
sed -i 's/   / /g' s2.txt
sed -i 's/              / /g' s2.txt
sed -i 's/      / /g' s2.txt
tr -d '\040\011\012\015\014'<s2.txt> cs_s2.txt
sed -i 's/M/\nM/g' cs_s2.txt
sed -i 's/O)/ 10 /g' cs_s2.txt
sed -i 's/A+)/ 9 /g' cs_s2.txt
sed -i 's/A)/ 8.5 /g' cs_s2.txt
sed -i 's/B+)/ 8 /g' cs_s2.txt
sed -i 's/B)/ 7 /g' cs_s2.txt
sed -i 's/C)/ 6 /g' cs_s2.txt
sed -i 's/P)/ 5 /g' cs_s2.txt
sed -i 's/F)/ 0 /g' cs_s2.txt
awk '{printf($1" "($2 * 4 + $3 * 4 + $4 * 3 + $5 * 1 + $6 * 1 + $7 * 4 + $8 * 3 + $9 * 3  + $10 * 1)/24)}' cs_s2.txt > temp2.txt
sed -i 's/MDL/\nMDL/g' temp2.txt
join temp1.txt temp2.txt > temp.txt
awk '{printf($1" "($2 + $3)/2)}' temp.txt > cs_s1_s2.txt
sed -i 's/MDL/\nMDL/g' cs_s1_s2.txt
join csb.txt cs_s1_s2.txt > csb2016.txt -1 6
awk '{$2=""}1' csb2016.txt > csb16.txt
nano csb16.txt
