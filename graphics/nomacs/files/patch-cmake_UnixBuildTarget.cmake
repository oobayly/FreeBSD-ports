--- cmake/UnixBuildTarget.cmake
+++ cmake/UnixBuildTarget.cmake
@@ -3,7 +3,7 @@
   set(BINARY_NAME ${CMAKE_PROJECT_NAME})
   link_directories(${LIBRAW_LIBRARY_DIRS} ${OpenCV_LIBRARY_DIRS} ${EXIV2_LIBRARY_DIRS})
   add_executable(${BINARY_NAME} WIN32 MACOSX_BUNDLE ${NOMACS_SOURCES} ${NOMACS_UI} ${NOMACS_MOC_SRC} ${NOMACS_RCC} ${NOMACS_HEADERS} ${NOMACS_RC} ${NOMACS_QM} ${NOMACS_TRANSLATIONS} ${LIBQPSD_SOURCES} ${LIBQPSD_HEADERS} ${LIBQPSD_MOC_SRC} ${WEBP_SOURCE} ${QUAZIP_SOURCES} ${QUAZIP_MOC_SRC})
-  target_link_libraries(${BINARY_NAME} ${QT_LIBRARIES} ${EXIV2_LIBRARIES} ${LIBRAW_LIBRARIES} ${OpenCV_LIBRARIES} ${VERSION_LIB} ${TIFF_LIBRARY} ${ZLIB_LIBRARY})
+  target_link_libraries(${BINARY_NAME} ${QT_LIBRARIES} ${EXIV2_LIBRARIES} ${LIBRAW_LIBRARIES} ${OPENCV_CORE_LIBRARY} ${OPENCV_IMGPROC_LIBRARY} ${SYSINFO_LIBRARY} ${VERSION_LIB} ${TIFF_LIBRARY} ${ZLIB_LIBRARY} ${CMAKE_THREAD_LIBS_INIT})
 
   if(CMAKE_SYSTEM_NAME MATCHES "Linux")
 	  SET_TARGET_PROPERTIES(${BINARY_NAME} PROPERTIES LINK_FLAGS -fopenmp)
@@ -49,7 +49,7 @@
   set(DLL_NAME lib${CMAKE_PROJECT_NAME})
   #set(LIB_NAME optimized ${DLL_NAME}.lib debug ${DLL_NAME}d.lib)
   LIST(REMOVE_ITEM NOMACS_SOURCES ${CMAKE_SOURCE_DIR}/src/main.cpp)
-  link_directories(${LIBRAW_LIBRARY_DIRS} ${OpenCV_LIBRARY_DIRS} ${EXIV2_LIBRARY_DIRS} ${CMAKE_BINARY_DIR})
+  link_directories(${LIBRAW_LIBRARY_DIRS} ${SYSINFO_LIBRARY_DIRS}  ${OPENCV_CORE_LIBRARY_DIRS} ${EXIV2_LIBRARY_DIRS} ${CMAKE_BINARY_DIR})
   add_executable(${BINARY_NAME} WIN32  MACOSX_BUNDLE src/main.cpp ${NOMACS_MOC_SRC_SU} ${NOMACS_QM} ${NOMACS_TRANSLATIONS} ${NOMACS_RC})
   target_link_libraries(${BINARY_NAME} ${QT_LIBRARIES} ${VERSION_LIB} ${DLL_NAME})
 
@@ -57,7 +57,7 @@
   set_target_properties(${BINARY_NAME} PROPERTIES IMPORTED_IMPLIB "")
 		  
   add_library(${DLL_NAME} SHARED ${NOMACS_SOURCES} ${NOMACS_UI} ${NOMACS_MOC_SRC} ${NOMACS_RCC} ${NOMACS_HEADERS} ${NOMACS_RC} ${LIBQPSD_SOURCES} ${LIBQPSD_HEADERS} ${LIBQPSD_MOC_SRC} ${WEBP_SOURCE}  ${QUAZIP_SOURCES} ${QUAZIP_MOC_SRC})
-  target_link_libraries(${DLL_NAME} ${QT_LIBRARIES} ${EXIV2_LIBRARIES} ${LIBRAW_LIBRARIES} ${OpenCV_LIBRARIES} ${VERSION_LIB} ${TIFF_LIBRARIES} ${HUPNP_LIBS} ${HUPNPAV_LIBS})
+  target_link_libraries(${DLL_NAME} ${QT_LIBRARIES} ${EXIV2_LIBRARIES} ${LIBRAW_LIBRARIES} ${OPENCV_CORE_LIBRARY} ${OPENCV_IMGPROC_LIBRARY} ${SYSINFO_LIBRARY} ${VERSION_LIB} ${TIFF_LIBRARIES} ${HUPNP_LIBS} ${HUPNPAV_LIBS})
   add_dependencies(${BINARY_NAME} ${DLL_NAME})
 
   if (ENABLE_QT5)
