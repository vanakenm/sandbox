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
end