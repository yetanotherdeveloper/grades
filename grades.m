# run this program with: octave grades.m
# Put grades here 
grades = [ 6
5.79
5.62
5.37
3.86
5.70
4.18
5.86
4.04
4.14
5.76
5.80
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

