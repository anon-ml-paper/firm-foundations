def membership_inference_entry_point():
    import sys
    import subprocess
    subprocess.call(["accelerate", "launch", "-m", "firm_foundations.routines.membership_inference"]+sys.argv[1:])