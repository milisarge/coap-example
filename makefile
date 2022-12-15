# Makefile for libcoap minimal examples
#
# Copyright (C) 2018-2021 Olaf Bergmann <bergmann@tzi.org>
#

CPPFLAGS=-Wall -Wextra -I./include
LDLIBS=libcoap-3.a -lgnutls
LINK.o=$(LINK.cc)

CXXFLAGS=-std=c++14

all: client server

client:: client.o common.o

server:: server.o common.o

clean:
	rm -f *.o client server
