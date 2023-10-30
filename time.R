# Load the tictoc library
library(tictoc)

# Measure the elapsed time for each script
tic()
source("scripts/hw4_solution_1.r")
Runtime_1 <- toc()

tic()
source("scripts/hw4_solution_2.r")
Runtime_2 <- toc()

tic()
source("scripts/hw4_solution_3.r")
Runtime_3 <- toc()

# Create a data frame to store the elapsed times
times <- data.frame(
  Script = c("hw4_solution_1.r", "hw4_solution_2.r", "hw4_solution_3.r"),
  Elapsed_Time = numeric(3)  # Initialize an empty numeric vector
)

# Define a list of runtime
runtime_objects <- list(Runtime_1, Runtime_2, Runtime_3)

# Loop through the scripts and set Elapsed_Time
for (i in 1:3) {
  times$Elapsed_Time[i] <- runtime_objects[[i]]$toc - runtime_objects[[i]]$tic
}

# Print the table
print(times)

#These are the Elapsed_Time obtained while running the script on my mac.
#As we see the time decreased with each iteration of the script, as expected. 
#The fist only runs on 1 core while, the last runs on 8 (in my case)
#The second run runs on 2 cores, which i suspect has something to do with the 
#formulation of the loop. As it is only a part of the script which has been 
#altered, we don't see to massive improvements with multiple cores. 
#but nonetheless, half the time is significant enough. 

#Script Elapsed_Time
# 1 hw4_solution_1.r       36.888
# 2 hw4_solution_2.r       25.521
# 3 hw4_solution_3.r       15.912