# Ruby blocks are anonymous functions that can be passed to methods
# Ruby blocks are the equivalent of JavaScript callbacks

# 2 possible syntax: (1) do end (2) {}



# or


# Implicit block => yield keyword

# Ex.
 
def multiples(v) 
end

dozens(4) {|n| n * 12}

# Same with explicit block (block.call)

def dozens(v, &block) 
end