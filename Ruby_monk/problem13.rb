# You are given some code in the form of lambdas. 

# Measure and return the time taken to execute that code. 

def exec_time(proc)
  start = Time.now
  proc.call
  Time.now - start
end
