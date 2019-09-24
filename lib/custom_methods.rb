module CustomMethods
  def custom_reverse(array)
    reverse_array = []
    array.each do |element|
      reverse_array.prepend(element)
    end
    return reverse_array
  end
end
