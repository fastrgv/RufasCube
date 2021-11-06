
# this library adjustment is not needed using AdaCore,
# Ada, but seems to be necessary for GNU compilers:

patchelf --set-rpath '$ORIGIN' libfreetype.so.6.12.1

# this tells libfreetype* where to find a dependency:
# libpng12* (in the same directory).
#
# and the command to see the rpath is:
# patchelf --print-rpath <sharedLibFile>
#
