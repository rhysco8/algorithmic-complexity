INPUT_SIZE_LOWER_LIMIT = 5_000
INPUT_SIZE_UPPER_LIMIT = 100_000
INPUT_SIZE_INCREMENT = 5_000

def code_timer
  timings_hash = Hash.new
  10.times do
    input_size = INPUT_SIZE_LOWER_LIMIT
    while input_size <= INPUT_SIZE_UPPER_LIMIT
      testing_array = *(1..input_size)
      time_taken = time_taken_to_run_algorithm(testing_array)
      add_to_timings_hash(timings_hash, input_size, time_taken)
      input_size += INPUT_SIZE_INCREMENT
    end
  end
  print_timings(timings_hash)
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

def time_taken_to_run_algorithm(testing_array)
  start_time = Time.now
  algorithm_under_test(testing_array)
  finish_time = Time.now
  return finish_time - start_time
end

def print_timings(timings_hash)
  timings_hash.each do |size, timings_array|
    puts "#{size}: #{average_of_timings(timings_array)}"
  end
end

def algorithm_under_test(testing_array)
  testing_array.reverse
end
