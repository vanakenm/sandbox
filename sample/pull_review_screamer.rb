class TestTest
  def build
    ["a","b","c"].each {|s|
      p s unless s == "test"
     }
     p "Done"
  end
end