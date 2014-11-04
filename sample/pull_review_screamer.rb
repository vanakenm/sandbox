class TestTest
  def build
    ["a","b","c"].each {|s|
      puts s unless s == "test"
     }
     puts "Done"
     puts "Finished"
  end
end