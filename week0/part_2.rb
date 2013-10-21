def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  if s == '' 
    false
  else
    !!(s.downcase =~ /^[b-df-hj-np-tv-z]/)
  end
end

def binary_multiple_of_4?(s)
  if s !~ /^(0|1)+$/ || s == '0'
    false
  else
    s.to_i(2) % 4 == 0
  end
end
