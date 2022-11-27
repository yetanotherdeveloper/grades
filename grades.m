# run this program with: octave grades.m
# Put grades here 
grades = [ 5.54 
3.5
3.83
4.33
5.67
4.79
3.49
3.11
5.60
6
5
]

function [ out ] = grade_round(num)
  rounded_down = floor(num)
  if (num - rounded_down >= 0.66)
    out = round(num) 
  else
  out = floor(num)
  endif
end


rounded_grades = arrayfun(@grade_round, grades )
average = mean(rounded_grades)

