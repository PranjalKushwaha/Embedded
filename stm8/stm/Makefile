CC := sdcc
CFLAGS := --opt-code-size
# object files directory
OBJDIR := ./rel
# driver source directory
DRSDIR := ./HAL/src
# driver include directory
DRIDIR := ./HAL/inc
# output directory
OUTDIR := ./output

INCS := $(wildcard $(foreach fd, $(DRIDIR), $(fd)/*.h))
SRCS := $(wildcard $(foreach fd, $(DRSDIR), $(fd)/*.c))
NODIR_SRC := $(notdir $(SRCS))
OBJS = $(addprefix $(OBJDIR)/, $(NODIR_SRC:c=rel)) 

# $^ refers to the right side of :
# $@ refers to the left of :
# $< refers to the first item in the dependency list

.PHONY : clean fullclean echoes 

main.ihx : $(OBJDIR)/main.rel $(OBJS) $(INCS)
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -mstm8 -o $@ $< $(OBJS) $(LDFLAGS)
	
$(OBJDIR)/main.rel : main.c
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -mstm8 -o $@ -c main.c $(CFLAGS) -I$(DRIDIR)
	
$(OBJDIR)/%.rel: $(DRSDIR)/%.c $(INCS)
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -mstm8 -o $@ -c $< $(CFLAGS) -I$(DRIDIR)
	
clean :
	rm -rf $(OBJDIR)/* $(OUTDIR)/*

fullclean :
	rm -rf $(OBJDIR)/* $(OUTDIR)/*
	rm *.ihx
	rm *.cdb
	rm *.lk
	rm *.map

echoes :
	@echo "INC files: $(INCS) \n"  
	@echo "SRC files: $(SRCS) \n"
	@echo "OBJ files: $(OBJS) \n"

