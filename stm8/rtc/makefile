CC := sdcc
PACKIHX := packihx
CFLAGS := --model-small
LDFLAGS  := --xram-loc 0x00 --xram-size 0x2FF   \
	  --data-loc 0x30  \
	 --code-size 0x3FFF \
	--model-small

# object files directory
OBJDIR := ./rel
# driver source directory
DRSDIR := ./driver/source
# driver include directory
DRIDIR := ./driver/include
# output directory
OUTDIR := ./output

INCS := $(wildcard $(foreach fd, $(DRIDIR), $(fd)/*.h))
SRCS := $(wildcard $(foreach fd, $(DRSDIR), $(fd)/*.c))
NODIR_SRC := $(notdir $(SRCS))
OBJS = $(addprefix $(OBJDIR)/, $(NODIR_SRC:c=rel)) 

# $^ refers to the right side of :
# $@ refers to the left of :
# $< refers to the first item in the dependency list

.PHONY : clean cleanfull echoes 

main.hex : $(OUTDIR)/main.ihx
	$(PACKIHX) $(OUTDIR)/main.ihx > main.hex

$(OUTDIR)/main.ihx : $(OBJDIR)/main.rel $(OBJS) $(INCS)
	mkdir -p $(@D)
	$(CC) -o $@ $< $(OBJS) $(LDFLAGS)
	
$(OBJDIR)/main.rel : main.c
	mkdir -p $(@D)
	$(CC) -o $@ -c main.c $(CFLAGS) -I$(DRIDIR)
	
$(OBJDIR)/%.rel: $(DRSDIR)/%.c $(INCS)
	mkdir -p $(@D)
	$(CC) -o $@ -c $< $(CFLAGS) -I$(DRIDIR)
	
clean :
	rm -rf $(OBJDIR)/* $(OUTDIR)/*

cleanall :
	rm -rf $(OBJDIR)/* $(OUTDIR)/*
	rm *.hex

echoes :
	@echo "INC files: $(INCS) \n"  
	@echo "SRC files: $(SRCS) \n"
	@echo "OBJ files: $(OBJS) \n"


