from os import fork, getppid
pid = fork()
if pid == 0:
    print("CHILD process", getppid())
else:
    print("HH", pid)