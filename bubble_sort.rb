require "benchmark"
require_relative "generate_number"
include GenarateNumber  

def bubble_sort(a)
    n = a.length
       for i in 0...n-1
           for j in 0...n-i-1
            if a[j] > a[j+1]
                temp = a[j]
                a[j] = a[j+1]
                a[j+1] = temp
            end
        end
    end
    return a
end

data = [100, 1000, 10000, 1000000, 10000000, 100000000]

Benchmark.bm(7) do |x|
    x.report("data #{data[0].to_s}")   { bubble_sort(generate_number(data[0])) }
    x.report("data #{data[1].to_s}")   { bubble_sort(generate_number(data[1])) }
    x.report("data #{data[2].to_s}")   { bubble_sort(generate_number(data[2])) }
    x.report("data #{data[3].to_s}")   { bubble_sort(generate_number(data[3])) }
    x.report("data #{data[4].to_s}")   { bubble_sort(generate_number(data[4])) }
    x.report("data #{data[5].to_s}")   { bubble_sort(generate_number(data[5])) }
end







