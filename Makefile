LF_MAIN ?= Smoke
SRC_GEN_PATH ?= ./src-gen/$(LF_MAIN)

ifeq ($(MAKECMDGOALS),all)
  _ :=  $(shell $(REACTOR_UC_PATH)/lfc/bin/lfc-dev src/$(LF_MAIN).lf)
endif

include ./src-gen/$(LF_MAIN)/Makefile

SRC = $(REACTOR_UC_PATH)/src/*.c
SRC += $(patsubst %, $(SRC_GEN_PATH)/%, $(LFC_GEN_SOURCES) $(LFC_GEN_MAIN)) 

all:
	patmos-clang $(SRC) -I$(REACTOR_UC_PATH)/include -I$(REACTOR_UC_PATH)/external -I$(SRC_GEN_PATH) -DPLATFORM_PATMOS -DSCHEDULER_DYNAMIC -DEVENT_QUEUE_SIZE=$(EVENT_QUEUE_SIZE) -DREACTION_QUEUE_SIZE=$(REACTION_QUEUE_SIZE) -O2 -o $(LF_MAIN)
