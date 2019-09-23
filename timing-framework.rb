def code_timer
  timings_hash = Hash.new
  10.times do
    input_size = 5_000
    while input_size <= 100_000
      testing_array = *(1..input_size)
      start_time = Time.now
      testing_array.reverse
      finish_time = Time.now
      time_taken = finish_time - start_time
      add_to_timings_hash(timings_hash, input_size, time_taken)
      input_size += 5_000
    end
  end
  timings_hash.each do |size, timings_array|
    puts "#{size}: #{average_of_timings(timings_array)}"
  end
end

def add_to_timings_hash(timings_hash, input_size, time_taken)
  if timings_hash.has_key?(input_size)
    timings_hash[input_size].push time_taken
  else
    timings_hash[input_size] = [time_taken]
  end
  return timings_hash
end

def average_of_timings(timings_array)
  return timings_array.sum.fdiv(timings_array.size)
end
