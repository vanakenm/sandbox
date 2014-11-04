class TestTest
  def build
    ['a','b','c'].each {|s|
      p s unless s == 'test'
     }
  end

  def build_better
    ['a','b','c'].each {|s|
      p s unless s == 'test'
     }
     ['a','b','c'].each {|s|
      p s unless s == 'test'
     }
     ['a','b','c'].each {|s|
      p s unless s == 'test'
     }
  end

  def even_better
    a = "a"
    b = "b"
    ab = "#{a}#{b}"
    c = "c"
    abc = "#{ab}#{c}"
  end
end