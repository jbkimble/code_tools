# Benchmark Framework
### A simple plug and play framework for testing speed of different bits of ruby code

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
