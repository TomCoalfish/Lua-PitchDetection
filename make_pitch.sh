swig -lua -c++ -Iinclude pitch_detection.i
gcc -fmax-errors=1 -Iinclude -fopenmp -O2 -march=native -mavx2 -fPIC -shared -o pitch_detection.so pitch_detection_wrap.cxx -lstdc++ -lluajit -lm -pthread -lmlpack -lffts -larmadillo -Lbin -lpitch_detection
