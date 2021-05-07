set history filename ~/.gdb_history
set history save on

set confirm off

set print object on

set print array-indexes on

set print pretty on

# Set solib
set solib-absolute-prefix $TOP/rootfs
set solib-search-path $TOP/middleware/lib

define argv
show args
end

define pc
p/x $pc
end

document argv
Print program arguments
end

define stack
info stack
end

document stack
Print call stack
end

define frame
info frame
info args
info locals
end

document frame
Print stack frame
end

define mmap
info proc mappings
end

document mmap
Show memory mappings.
end

define addr2line
info line *arg1
end

document addr2line
Get line from address
end

define reg
info registers
end
