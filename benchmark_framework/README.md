# Benchmark Framework

### A simple plug and play framework for testing speed and 'Big O' times of different bits of ruby code

Below is what the output in the terminal will look like

```
            user     system      total        real
[0]       0.230000   0.000000   0.230000 (  0.237836)
sub       0.580000   0.010000   0.590000 (  0.593332)
gsub      2.260000   0.050000   2.310000 (  2.331633)

```

first_column: the label for the method/code you are testing

user: user CPU time (i.e. time spent executing your code)

system: system CPU time (i.e. time spent making system calls to the operating system kernel)

total: system CPU time + user CPU time

real: Elapsed real time in seconds

# Big O

If you use the Big O code snippet the output will give you an additional line showing the rate that the execution time of your code is increasing

```
user     system      total        real
10        0.000000   0.000000   0.000000 (  0.000006)
100       0.000000   0.000000   0.000000 (  0.000010)
1,000     0.000000   0.000000   0.000000 (  0.000109)
10,000    0.000000   0.000000   0.000000 (  0.000570)
100,000   0.010000   0.000000   0.010000 (  0.004679)
1,000,000  0.050000   0.000000   0.050000 (  0.048879)
10,000,000  0.480000   0.000000   0.480000 (  0.491444)
Rate of increase in execution time: ["x1.0", "x1.81", "x10.3", "x5.24", "x8.21", "x10.4", "x10.0"]

```
