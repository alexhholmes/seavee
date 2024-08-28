cmake_minimum_required(VERSION 3.29)
project(seavee LANGUAGES CXX CUDA)

set(CMAKE_CUDA_STANDARD 20)

add_executable(seavee main.cu)

set_target_properties(seavee PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)

