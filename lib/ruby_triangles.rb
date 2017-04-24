require '/version'

# namespace class for this project
module RubyTriangles
  # tests arrays to see if they are valid triangles
  class Triangle
    def test(sides)
      hash = { 1 => 'equilateral', 2 => 'isoceles', 3 => 'scalene' }
      return hash.fetch(sides.uniq.length) if triangle?(sides)
      'Error: not a triangle'
    end
  end

  def triangle?(sides)
    sorted = sides.sort
    max = sorted.pop
    max <= sorted.reduce(&:+)
  end
end
