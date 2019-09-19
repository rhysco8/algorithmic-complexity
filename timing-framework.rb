def code_timer
  input_size = 5_000
  timing_array = Hash.new
  while input_size <= 100_000
    testing_array = *(1..input_size)
    start_time = Time.now
    testing_array.reverse
    finish_time = Time.now
    time_taken = finish_time - start_time
    timing_array[input_size] = time_taken
    input_size += 5_000
  end
  timing_array.each do |size, time|
    puts "#{size}: #{time}"
  end
end
