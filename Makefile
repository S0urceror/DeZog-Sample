OUTPUT_DIR = bin
#sjasmplus
ASM = sjasmplus
ASMFLAGS = --fullpath --raw=$@ --sym=$(basename $@).sym --lst=$(basename $@).lst
#glass
ASMG = java -jar ../../Compilers/glass.jar
ASMGFLAGS = 

all: $(OUTPUT_DIR)/hello.com $(OUTPUT_DIR)/hellog.com

$(OUTPUT_DIR)/hello.com: main.asm
	$(ASM) $(ASMFLAGS) $<

$(OUTPUT_DIR)/hellog.com: main.asm
	$(ASMG) $(ASMGFLAGS) $< $@ $(OUTPUT_DIR)/hellog.sym

clean:
	-rm $(OUTPUT_DIR)/*.com
