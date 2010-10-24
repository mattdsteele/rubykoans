# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  check_violation(a,b,c)
  return :equilateral if a == b and b == c
  return :isosceles if a == b or b == c or a == c
  :scalene
end

def check_violation(*sides)
  raise TriangleError if sides.select{|x| x <= 0}.size > 0
  s = sides.sort
  raise TriangleError if s[0] + s[1] <= s[2]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
