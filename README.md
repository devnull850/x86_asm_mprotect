# x86 mprotect syscall

### mprotect syscall
```
%rax $0xa
%rdi <addr>
%rsi <length>
%edx <prot bits>
```

### prot bits
```
PROT_READ 1
PROT_WRITE 2
PROT_EXEC 4
PROT_NONE 8
```

### open syscall
```
%rax 2
%rdi <filename>
%rsi <flags>
%edx <mode> (optional)
```

### flags
```
O_RDONLY 0
```

### close syscall
```
%rax 3
%rdi <file descriptor>
```

### read syscall
```
%rax 0
%rdi <file descriptor>
%rsi <buffer>
%rdx <number chars>
```

### exit syscall
```
%rax $0x3c
%rdi <error code>
```
