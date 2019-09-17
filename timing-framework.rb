def code_timer
  arr = ("a" * 1_000_000).split('')
  start_time = Time.now
  arr.last
  finish_time = Time.now
  puts finish_time - start_time
end
