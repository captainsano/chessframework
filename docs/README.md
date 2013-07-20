# ChessFramework

## Introduction

ChessFramework is the chess library powering all 64cloud's products coming up in the future. It provides a whole bunch of thoroughly tested utility functions for chess game and move handling. Many common design patterns and standard library functions have been adopted by the library to improve the overall reliability. The library is aimed towards creating light weight, low memory footprint and fast chess applications especially for the mobile devices. The framework is written in C++11 and is portable.

## Parts

The library provides the facilities, packaged in various parts:

- Legal Checker
- PGN Parser

### Legal Checker

Legal checker checks the legality of the given move in a game state. 