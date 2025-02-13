import sys

module_name = "os"  # Change this to the module you want to check

if module_name in sys.builtin_module_names:
    print(f"{module_name} is a built-in module.")
else:
    print(f"{module_name} is NOT a built-in module.")



import pkgutil

def check_module_origin(module_name):
    loader = pkgutil.find_loader(module_name)
    
    if loader is None:
        print(f"{module_name} is NOT found.")
    elif "site-packages" in str(loader):
        print(f"{module_name} is a third-party (external) module.")
    else:
        print(f"{module_name} is a built-in or standard library module.")

# Example usage:
check_module_origin("os")        # Built-in
check_module_origin("requests")  # Third-party
check_module_origin("json")      # Built-in
check_module_origin("numpy")     # Third-party
