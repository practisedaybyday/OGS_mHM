## Programmed by Lars Bilke
## Modified by:
##            WW 20.04.2010. 

# Additional libraries

IF (NOT QT4_FOUND)
	MESSAGE(FATAL_ERROR "Error: Qt was not found but is needed for the GUI. Aborting...")
ENDIF (NOT QT4_FOUND)

FIND_PACKAGE( VRPN )
IF(NOT VRPN_FOUND OR NOT QUATLIB_FOUND)
	SET(OGS_USE_VRPN Off)
	SET(VRPN_FOUND OFF)
ENDIF()

IF (NOT OGS_VRED_PLUGIN)
	IF (OGS_USE_OPENSG)
		FIND_PACKAGE( OpenSG REQUIRED COMPONENTS OSGBase OSGSystem)
	ELSE (OGS_USE_OPENSG)
		FIND_PACKAGE( OpenSG COMPONENTS OSGBase OSGSystem)
	ENDIF (OGS_USE_OPENSG)
ENDIF (NOT OGS_VRED_PLUGIN)

# Project name
PROJECT( OGS-${OGS_VERSION_MAJOR}-GUI )

# Set additional CMake modules path
SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/CMakeConfiguration")

ADD_SUBDIRECTORY( Qt )

IF (MSVC)
	OPTION(OGS_VRED_PLUGIN "Enable the Vred plugin" OFF)
ENDIF (MSVC)

IF (OGS_VRED_PLUGIN)
	FIND_PATH (VRED_DIR_FOUND vrNodePtr.h ${VRED_DIR}/include/vred)
	IF (NOT VRED_DIR_FOUND)
		MESSAGE (FATAL_ERROR "VRED not found. Specifiy the directory as -DVRED_DIR='Path to VRED'")
	ELSE (NOT VRED_DIR_FOUND)
		MESSAGE (STATUS "Found VRED")
	ENDIF (NOT VRED_DIR_FOUND)
ENDIF (OGS_VRED_PLUGIN)

IF(CMAKE_COMPILER_IS_GNUCXX)
	ADD_DEFINITIONS (-D__STDC_FORMAT_MACROS)	# for OpenSG compiling
ENDIF(CMAKE_COMPILER_IS_GNUCXX)
