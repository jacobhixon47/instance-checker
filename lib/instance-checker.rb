class String
  define_method(:instance_check) do |word|
    instances = 0
    strings_array = self.downcase.split(" ")
    word = word.downcase
    strings_array.each do |string|
      if string == word
        instances += 1
      end
    end
    instances
  end
end
