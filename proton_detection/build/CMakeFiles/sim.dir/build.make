# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/padniuk/Desktop/proton_detection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/padniuk/Desktop/proton_detection/build

# Include any dependencies generated for this target.
include CMakeFiles/sim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sim.dir/flags.make

CMakeFiles/sim.dir/main.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/main.cc.o: ../main.cc
CMakeFiles/sim.dir/main.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sim.dir/main.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/main.cc.o -MF CMakeFiles/sim.dir/main.cc.o.d -o CMakeFiles/sim.dir/main.cc.o -c /home/padniuk/Desktop/proton_detection/main.cc

CMakeFiles/sim.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/main.cc > CMakeFiles/sim.dir/main.cc.i

CMakeFiles/sim.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/main.cc -o CMakeFiles/sim.dir/main.cc.s

CMakeFiles/sim.dir/src/EDActionInitialization.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDActionInitialization.cc.o: ../src/EDActionInitialization.cc
CMakeFiles/sim.dir/src/EDActionInitialization.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sim.dir/src/EDActionInitialization.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDActionInitialization.cc.o -MF CMakeFiles/sim.dir/src/EDActionInitialization.cc.o.d -o CMakeFiles/sim.dir/src/EDActionInitialization.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDActionInitialization.cc

CMakeFiles/sim.dir/src/EDActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDActionInitialization.cc > CMakeFiles/sim.dir/src/EDActionInitialization.cc.i

CMakeFiles/sim.dir/src/EDActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDActionInitialization.cc -o CMakeFiles/sim.dir/src/EDActionInitialization.cc.s

CMakeFiles/sim.dir/src/EDChamberHit.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDChamberHit.cc.o: ../src/EDChamberHit.cc
CMakeFiles/sim.dir/src/EDChamberHit.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sim.dir/src/EDChamberHit.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDChamberHit.cc.o -MF CMakeFiles/sim.dir/src/EDChamberHit.cc.o.d -o CMakeFiles/sim.dir/src/EDChamberHit.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDChamberHit.cc

CMakeFiles/sim.dir/src/EDChamberHit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDChamberHit.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDChamberHit.cc > CMakeFiles/sim.dir/src/EDChamberHit.cc.i

CMakeFiles/sim.dir/src/EDChamberHit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDChamberHit.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDChamberHit.cc -o CMakeFiles/sim.dir/src/EDChamberHit.cc.s

CMakeFiles/sim.dir/src/EDChamberSD.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDChamberSD.cc.o: ../src/EDChamberSD.cc
CMakeFiles/sim.dir/src/EDChamberSD.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sim.dir/src/EDChamberSD.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDChamberSD.cc.o -MF CMakeFiles/sim.dir/src/EDChamberSD.cc.o.d -o CMakeFiles/sim.dir/src/EDChamberSD.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDChamberSD.cc

CMakeFiles/sim.dir/src/EDChamberSD.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDChamberSD.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDChamberSD.cc > CMakeFiles/sim.dir/src/EDChamberSD.cc.i

CMakeFiles/sim.dir/src/EDChamberSD.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDChamberSD.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDChamberSD.cc -o CMakeFiles/sim.dir/src/EDChamberSD.cc.s

CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o: ../src/EDDetectorConstruction.cc
CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o -MF CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o.d -o CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDDetectorConstruction.cc

CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDDetectorConstruction.cc > CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.i

CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDDetectorConstruction.cc -o CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.s

CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o: ../src/EDEmCalorimeterHit.cc
CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o -MF CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o.d -o CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDEmCalorimeterHit.cc

CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDEmCalorimeterHit.cc > CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.i

CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDEmCalorimeterHit.cc -o CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.s

CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o: ../src/EDEmCalorimeterSD.cc
CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o -MF CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o.d -o CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDEmCalorimeterSD.cc

CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDEmCalorimeterSD.cc > CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.i

CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDEmCalorimeterSD.cc -o CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.s

CMakeFiles/sim.dir/src/EDEventAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDEventAction.cc.o: ../src/EDEventAction.cc
CMakeFiles/sim.dir/src/EDEventAction.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/sim.dir/src/EDEventAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDEventAction.cc.o -MF CMakeFiles/sim.dir/src/EDEventAction.cc.o.d -o CMakeFiles/sim.dir/src/EDEventAction.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDEventAction.cc

CMakeFiles/sim.dir/src/EDEventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDEventAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDEventAction.cc > CMakeFiles/sim.dir/src/EDEventAction.cc.i

CMakeFiles/sim.dir/src/EDEventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDEventAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDEventAction.cc -o CMakeFiles/sim.dir/src/EDEventAction.cc.s

CMakeFiles/sim.dir/src/EDMagneticField.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDMagneticField.cc.o: ../src/EDMagneticField.cc
CMakeFiles/sim.dir/src/EDMagneticField.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/sim.dir/src/EDMagneticField.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDMagneticField.cc.o -MF CMakeFiles/sim.dir/src/EDMagneticField.cc.o.d -o CMakeFiles/sim.dir/src/EDMagneticField.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDMagneticField.cc

CMakeFiles/sim.dir/src/EDMagneticField.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDMagneticField.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDMagneticField.cc > CMakeFiles/sim.dir/src/EDMagneticField.cc.i

CMakeFiles/sim.dir/src/EDMagneticField.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDMagneticField.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDMagneticField.cc -o CMakeFiles/sim.dir/src/EDMagneticField.cc.s

CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o: ../src/EDPrimaryGeneratorAction.cc
CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o -MF CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o.d -o CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDPrimaryGeneratorAction.cc

CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDPrimaryGeneratorAction.cc > CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.i

CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDPrimaryGeneratorAction.cc -o CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.s

CMakeFiles/sim.dir/src/EDRunAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/EDRunAction.cc.o: ../src/EDRunAction.cc
CMakeFiles/sim.dir/src/EDRunAction.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/sim.dir/src/EDRunAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/EDRunAction.cc.o -MF CMakeFiles/sim.dir/src/EDRunAction.cc.o.d -o CMakeFiles/sim.dir/src/EDRunAction.cc.o -c /home/padniuk/Desktop/proton_detection/src/EDRunAction.cc

CMakeFiles/sim.dir/src/EDRunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/EDRunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/padniuk/Desktop/proton_detection/src/EDRunAction.cc > CMakeFiles/sim.dir/src/EDRunAction.cc.i

CMakeFiles/sim.dir/src/EDRunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/EDRunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/padniuk/Desktop/proton_detection/src/EDRunAction.cc -o CMakeFiles/sim.dir/src/EDRunAction.cc.s

# Object files for target sim
sim_OBJECTS = \
"CMakeFiles/sim.dir/main.cc.o" \
"CMakeFiles/sim.dir/src/EDActionInitialization.cc.o" \
"CMakeFiles/sim.dir/src/EDChamberHit.cc.o" \
"CMakeFiles/sim.dir/src/EDChamberSD.cc.o" \
"CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o" \
"CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o" \
"CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o" \
"CMakeFiles/sim.dir/src/EDEventAction.cc.o" \
"CMakeFiles/sim.dir/src/EDMagneticField.cc.o" \
"CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o" \
"CMakeFiles/sim.dir/src/EDRunAction.cc.o"

# External object files for target sim
sim_EXTERNAL_OBJECTS =

sim: CMakeFiles/sim.dir/main.cc.o
sim: CMakeFiles/sim.dir/src/EDActionInitialization.cc.o
sim: CMakeFiles/sim.dir/src/EDChamberHit.cc.o
sim: CMakeFiles/sim.dir/src/EDChamberSD.cc.o
sim: CMakeFiles/sim.dir/src/EDDetectorConstruction.cc.o
sim: CMakeFiles/sim.dir/src/EDEmCalorimeterHit.cc.o
sim: CMakeFiles/sim.dir/src/EDEmCalorimeterSD.cc.o
sim: CMakeFiles/sim.dir/src/EDEventAction.cc.o
sim: CMakeFiles/sim.dir/src/EDMagneticField.cc.o
sim: CMakeFiles/sim.dir/src/EDPrimaryGeneratorAction.cc.o
sim: CMakeFiles/sim.dir/src/EDRunAction.cc.o
sim: CMakeFiles/sim.dir/build.make
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4Tree.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4FR.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4GMocren.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4visHepRep.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4RayTracer.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4VRML.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4OpenGL.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4gl2ps.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4vis_management.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4modeling.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4interfaces.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4persistency.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4error_propagation.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4readout.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4physicslists.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4tasking.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4parmodels.so
sim: /usr/lib/libGL.so
sim: /usr/lib/libQt5OpenGL.so.5.15.4
sim: /usr/lib/libQt5PrintSupport.so.5.15.4
sim: /usr/lib/libQt5Widgets.so.5.15.4
sim: /usr/lib/libQt5Gui.so.5.15.4
sim: /usr/lib/libQt5Core.so.5.15.4
sim: /usr/lib/libXmu.so
sim: /usr/lib/libXext.so
sim: /usr/lib/libXt.so
sim: /usr/lib/libICE.so
sim: /usr/lib/libSM.so
sim: /usr/lib/libX11.so
sim: /usr/lib/libxerces-c.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4run.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4event.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4tracking.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4processes.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4analysis.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4tools.so
sim: /usr/lib/libexpat.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4digits_hits.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4track.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4particles.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4geometry.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4materials.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4zlib.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4graphics_reps.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4intercoms.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4global.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4clhep.so
sim: /home/padniuk/software/geant4-v11.0.0/install/lib/libG4ptl.so.0.0.2
sim: CMakeFiles/sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/padniuk/Desktop/proton_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable sim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sim.dir/build: sim
.PHONY : CMakeFiles/sim.dir/build

CMakeFiles/sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sim.dir/clean

CMakeFiles/sim.dir/depend:
	cd /home/padniuk/Desktop/proton_detection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/padniuk/Desktop/proton_detection /home/padniuk/Desktop/proton_detection /home/padniuk/Desktop/proton_detection/build /home/padniuk/Desktop/proton_detection/build /home/padniuk/Desktop/proton_detection/build/CMakeFiles/sim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sim.dir/depend

