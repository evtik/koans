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
	raise TriangleError, "Any side cannot be less or equal 0" if a <= 0 || b <= 0 || c <= 0
	fail TriangleError,
		"The sum of no two sides cannot be less or equal to the 3rd side" if (a + b) <= c || (a + c) <= b || (b + c) <= a
  # WRITE THIS CODE
  if a == b && b == c
  	:equilateral
  elsif a == b || a == c || c == b
  	:isosceles
  else
  	:scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
