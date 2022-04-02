def time_it(label)
  start_time = Time.now
  yield
  elapsed_time = Time.now - start_time
  puts "#{label} took #{elapsed_time} seconds"
end

time_it("Sleepy code") do
  # Run some code
  sleep(0.5)
end