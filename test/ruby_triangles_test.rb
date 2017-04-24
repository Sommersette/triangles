require 'test_helper'


class RubyTrianglesTest < Minitest::Test
  def setup
    @triangle = RubyTriangles::Triangle.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::RubyTriangles::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_it_finds_equilateral_triangles
    assert @triangle.test([4,4,4]) == 'equilateral'
  end

  def test_it_finds_isosceles_triangles
    assert @triangle.test([2,2,4]) == 'isoceles'
  end

  def test_it_finds_scalene_triangles
    assert @triangle.test([3,4,5]) == 'scalene'
  end

  def test_it_finds_invalid_triangles
    assert_match(/Error/, @triangle.test([1,1,5]))
  end
end
