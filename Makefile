OUTPUT_DIR = bin
#sjasmplus
ASM = sjasmplus
ASMFLAGS = --fullpath --raw=$@ --sym=$(basename $@).sym --lst=$(basename $@).lst
#glass
ASMG = java -jar ../../Compilers/glass-dev.jar
ASMGFLAGS = 

all: $(OUTPUT_DIR)/hello.com $(OUTPUT_DIR)/hellog.com $(OUTPUT_DIR)/helloi.com $(OUTPUT_DIR)/hellogi.com $(OUTPUT_DIR)/hellod.raw

$(OUTPUT_DIR)/hello.com: main.asm
	$(ASM) $(ASMFLAGS) $<

$(OUTPUT_DIR)/helloi.com: main-include.asm
	$(ASM) $(ASMFLAGS) $<

$(OUTPUT_DIR)/hellod.raw: main-direct.asm
	$(ASM) $(ASMFLAGS) $<

$(OUTPUT_DIR)/hellog.com: main.asm
	$(ASMG) $(ASMGFLAGS) $< $@ $(OUTPUT_DIR)/hellog.sym -L $(OUTPUT_DIR)/hellog.lst

$(OUTPUT_DIR)/hellogi.com: main-include.asm
	$(ASMG) $(ASMGFLAGS) $< $@ $(OUTPUT_DIR)/hellogi.sym -L $(OUTPUT_DIR)/hellogi.lst

clean:
	-rm $(OUTPUT_DIR)/*.com
