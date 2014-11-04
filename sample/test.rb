class TestTest
  def build()
    ["a","b","c"].each {|s|
      return s unless s == "test"
     }
  end
end
