require 'sinatra'
require 'ruby_triangles'

if development?
  require 'sinatra/reloader'
  also_reload('**/*.rb')
end

get('/') do
  erb(:index)
end

post('/trianglefinder') do
  sizes = params.fetch('triangle_sizes').map(&:to_i)
  triangle = RubyTriangles::Triangle.new
  @result = triangle.test(sizes)
  erb(:index)
end
