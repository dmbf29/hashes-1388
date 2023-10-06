def tag(tag_name, attributes = {})
  p attributes
  "<#{tag_name}>#{yield}</#{tag_name}>"
end

# when we use a hash as the last argument, we don't need the curly brackets
html = tag('div', { href: 'www.google.com', style: 'color: green' }) do
  'Hello World'
end

p html
