require "ruby_triangles/version"
require 'pry'

module RubyTriangles
  class Triangle
    def test(sides)
      if is_triangle?(sides)
        {
          1 => 'equilateral',
          2 => 'isoceles',
          3 => 'scalene'
        }.fetch(sides.uniq.length)
      else
        return 'Error: not a triangle'
      end
    end

    def is_triangle?(sides)
      sorted = sides.sort
      max = sorted.pop
      max <= sorted.reduce(&:+)
    end
  end
end
