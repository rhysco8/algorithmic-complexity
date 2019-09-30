module CustomMethods
  def custom_reverse(array)
    reverse_array = []
    array.each do |element|
      reverse_array.prepend(element)
    end
    return reverse_array
  end

  def custom_shuffle(array)
    shuffled_array = []
    until array.empty?
      random_element_index = rand(0..array.size - 1)
      randomly_chosen_element = array[random_element_index]
      shuffled_array.push randomly_chosen_element
      array[random_element_index] = array.last
      array.pop
    end
    return shuffled_array
  end
end
