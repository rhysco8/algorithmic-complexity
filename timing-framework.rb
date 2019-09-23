INPUT_SIZE_LOWER_LIMIT = 5_000
INPUT_SIZE_UPPER_LIMIT = 100_000
INPUT_SIZE_INCREMENT = 5_000

def algorithm_timer(algorithm_to_test)
  timings_hash = Hash.new
  51.times do
    input_size = INPUT_SIZE_LOWER_LIMIT
    while input_size <= INPUT_SIZE_UPPER_LIMIT
      testing_array = (1..input_size).to_a
      testing_array.shuffle! if algorithm_to_test == 'sort'
      time_taken = time_taken_to_run_algorithm(algorithm_to_test, testing_array)
      add_to_timings_hash(timings_hash, input_size, time_taken)
      input_size += INPUT_SIZE_INCREMENT
    end
  end
  print_timings(timings_hash)
end

private

def add_to_timings_hash(timings_hash, input_size, time_taken)
  if timings_hash.has_key?(input_size)
    timings_hash[input_size].push time_taken
  else
    timings_hash[input_size] = [time_taken]
  end
end

def median_value(timings_array)
  return timings_array.sort[25]
end

def time_taken_to_run_algorithm(algorithm_to_test, testing_array)
  start_time = Time.now
  algorithm_under_test(algorithm_to_test, testing_array)
  finish_time = Time.now
  return finish_time - start_time
end

def print_timings(timings_hash)
  timings_hash.each do |size, timings_array|
    puts "#{size}: #{median_value(timings_array)}"
  end
end

def algorithm_under_test(algorithm_to_test, testing_array)
  case algorithm_to_test
  when 'reverse'
    testing_array.reverse
  when 'last'
    testing_array.last
  when 'shuffle'
    testing_array.shuffle
  when 'sort'
    testing_array.sort
  end
end
