# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-src"
  "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-build"
  "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-subbuild/ds-populate-prefix"
  "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-subbuild/ds-populate-prefix/tmp"
  "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
  "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-subbuild/ds-populate-prefix/src"
  "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/ProgramData/QtCreator/Links/d8d55bf5b839b33bb9d4ffe8199f9df2/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
