CXX = g++
CCFLAGS =   -c -g -O2 -DIPMGEMPLUGIN -D__unix 
LINK = ar
LIB = libgemipm2k.a

${LIB}:  gdatastream.o s_fgl.o s_fgl1.o s_fgl2.o s_fgl3.o s_fgl4.o \
       node.o node_format.o ms_multi_file.o \
       ms_multi_format.o ipm_chemical.o ipm_chemical2.o ipm_chemical3.o \
       ipm_main.o ipm_simplex.o io_arrays.o ms_param.o num_methods.o
# mcotac.o mcotac1d.o datio.o erech.o inistat2.o inparf.o setpar_.o walk2_.o wegdat1d_.o hydro1d_.o 
             
	$(LINK) -rvs ${LIB} gdatastream.o s_fgl.o s_fgl1.o s_fgl2.o s_fgl3.o s_fgl4.o \
	   node.o node_format.o ms_multi_file.o \
       ms_multi_format.o ipm_chemical.o ipm_chemical2.o ipm_chemical3.o \
       ipm_main.o ipm_simplex.o io_arrays.o ms_param.o num_methods.o

gstring.o: gstring.cpp gstring.h \
		v_user.h \
		array.h \
		verror.h
	$(CXX)  $(CCFLAGS) gstring.cpp
gdatastream.o: gdatastream.cpp gdatastream.h \
		verror.h \
		gstring.h \
		array.h
	$(CXX)  $(CCFLAGS) gdatastream.cpp
s_fgl.o: s_fgl.cpp s_fgl.h \
		verror.h \
		m_const.h \
		gstring.h \
		array.h \
		v_user.h
	$(CXX)  $(CCFLAGS) s_fgl.cpp
s_fgl1.o: s_fgl1.cpp verror.h \
		s_fgl.h \
		gstring.h \
		array.h
	$(CXX)  $(CCFLAGS) s_fgl1.cpp
s_fgl2.o: s_fgl2.cpp s_fgl.h \
		m_const.h \
		verror.h \
		v_user.h \
		gstring.h \
		array.h
	$(CXX)  $(CCFLAGS) s_fgl2.cpp
s_fgl3.o: s_fgl3.cpp verror.h \
		s_fgl.h \
		gstring.h \
		array.h
	$(CXX)  $(CCFLAGS) s_fgl3.cpp
s_fgl4.o: s_fgl4.cpp verror.h \
		s_fgl.h \
		gstring.h \
		array.h
	$(CXX)  $(CCFLAGS) s_fgl4.cpp
node.o: node.cpp node.h \
		gdatastream.h \
		num_methods.h \
		m_param.h \
		datach.h \
		databr.h \
		ms_multi.h \
		verror.h \
		gstring.h \
		array.h \
		m_const.h \
		s_fgl.h \
		v_user.h
	$(CXX)  $(CCFLAGS) node.cpp
node_format.o: node_format.cpp io_arrays.h \
		node.h \
		gdatastream.h \
		gstring.h \
		array.h \
		m_param.h \
		datach.h \
		databr.h \
		ms_multi.h \
		verror.h \
		m_const.h \
		s_fgl.h \
		v_user.h
	$(CXX)  $(CCFLAGS) node_format.cpp
ms_multi_file.o: ms_multi_file.cpp  io_arrays.h \
		m_param.h \
		gdatastream.h \
		gstring.h \
		array.h \
		ms_multi.h \
		verror.h \
		m_const.h \
		s_fgl.h \
		v_user.h
	$(CXX)  $(CCFLAGS) ms_multi_file.cpp
ms_multi_format.o: ms_multi_format.cpp  io_arrays.h \
		m_param.h \
		node.h \
		gstring.h \
		array.h \
		gdatastream.h \
		ms_multi.h \
		verror.h \
		m_const.h \
		s_fgl.h \
		v_user.h \
		datach.h \
		databr.h
	$(CXX)  $(CCFLAGS) ms_multi_format.cpp
ipm_chemical.o: ipm_chemical.cpp m_param.h \
		gdatastream.h \
		ms_multi.h \
		verror.h \
		gstring.h \
		array.h \
		m_const.h \
		s_fgl.h \
		v_user.h
	$(CXX)  $(CCFLAGS) ipm_chemical.cpp
ipm_chemical2.o: ipm_chemical2.cpp m_param.h \
		gdatastream.h \
		ms_multi.h \
		verror.h \
		gstring.h \
		array.h \
		m_const.h \
		s_fgl.h \
		v_user.h
	$(CXX)  $(CCFLAGS) ipm_chemical2.cpp
ipm_chemical3.o: ipm_chemical3.cpp m_param.h \
		s_fgl.h \
		gdatastream.h \
		ms_multi.h \
		verror.h \
		gstring.h \
		array.h \
		m_const.h \
		v_user.h
	$(CXX)  $(CCFLAGS) ipm_chemical3.cpp
ipm_main.o: ipm_main.cpp m_param.h \
		jama_lu.h \
		jama_cholesky.h \
		node.h \
		gdatastream.h \
		ms_multi.h \
		verror.h \
		gstring.h \
		array.h \
		m_const.h \
		s_fgl.h \
		v_user.h \
		tnt.h \
		tnt_array1d.h \
		tnt_array2d.h \
		tnt_i_refvec.h \
		datach.h \
		databr.h
	$(CXX)  $(CCFLAGS) ipm_main.cpp
ipm_simplex.o: ipm_simplex.cpp m_param.h \
		gdatastream.h \
		ms_multi.h \
		verror.h \
		gstring.h \
		array.h \
		m_const.h \
		s_fgl.h \
		v_user.h
	$(CXX)  $(CCFLAGS) ipm_simplex.cpp
io_arrays.o: io_arrays.cpp io_arrays.h \
		verror.h \
		v_user.h \
		gstring.h \
		array.h
	$(CXX)  $(CCFLAGS) io_arrays.cpp
ms_param.o: ms_param.cpp m_param.h \
		num_methods.h \
		gdatastream.h \
		node.h \
		ms_multi.h \
		verror.h \
		gstring.h \
		array.h \
		m_const.h \
		s_fgl.h \
		v_user.h \
		datach.h \
		databr.h
	$(CXX)  $(CCFLAGS) ms_param.cpp
num_methods.o: num_methods.cpp v_user.h \
		num_methods.h \
		verror.h \
		gstring.h \
		array.h
	$(CXX)  $(CCFLAGS) num_methods.cpp

#gwheader.h: gwheader.h
#f_gem_node.h: f_gem_node.h
#gwheader.inc: gwheader.inc
#kinetics.inc: kinetics.inc

clean: 
	rm -f *.o *.ti *.a
