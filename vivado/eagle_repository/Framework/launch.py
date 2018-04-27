"""
This script launches the Python threading framework and should be called from autorun.sh to start the threads on boot
"""
from threads.framework import Framework

print 'starting threading framework'
framework = Framework(5.0 / 238.0)
framework.start_threading()
