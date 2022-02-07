from functools import wraps

def wrapper(function):
    @wraps(function)
    def wrapped(*argc, **argv):
        print(function.__name__)
        return function(*argc, **argv)
    return wrapped

@wrapper
def say_hello(name):
    print("Hello, ", name)
