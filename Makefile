CC=gcc
INCLUDES=-Isrc/include

CFLAGS=-Wall -g $(INCLUDES)

SOURCES=$(wildcard src/*.c src/**/*.c)
OBJECTS=$(patsubst %.c,%.o,$(SOURCES))

TEST_SOURCES=$(wildcard tests/*_tests.c)
TEST_CASES=$(patsubst %.c,%,$(TEST_SOURCES))

TARGET=target/libfgutils.a

all: build $(OBJECTS) $(TARGET)

build:
	@mkdir target

$(TARGET):
$(TARGET): 
	ar crf $@ $(OBJECTS)

tests: $(TEST_CASES)
	runtests.bat

$(TEST_CASES):
	gcc $(CFLAGS) -Ltarget $(@).c -lfgutils -o $@


clean:
	clean.bat
