################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccsv6/tools/compiler/c5500_4.4.1

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./aic3204_loop_linein.obj" \
"./aic3204_test.obj" \
"./aic3204_tone_headphone.obj" \
"./ezdsp5535.obj" \
"./ezdsp5535_gpio.obj" \
"./ezdsp5535_i2c.obj" \
"./ezdsp5535_i2s.obj" \
"./ezdsp5535_lcd.obj" \
"./ezdsp5535_led.obj" \
"./main.obj" \
"../lnkx.cmd" \
$(GEN_CMDS__FLAG) \
-l"cslVC5505.lib" \
-l"rts55x.lib" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
aic3204.out \

EXE_OUTPUTS__QUOTED += \
"aic3204.out" \


# All Target
all: aic3204.out

# Tool invocations
aic3204.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C5500 Linker'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --diag_warning=225 --ptrdiff_size=16 --memory_model=large -k -z -m"aic3204.map" --stack_size=0x200 --heap_size=0x400 --warn_sections -i"../../lib" -i"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/lib" -i"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" -i"Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/lib" -i"Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/ccs_v4.0_examples/cslVC5505/Debug" --reread_libs --xml_link_info="aic3204_linkInfo.xml" --rom_model --sys_stacksize=0x200 -o "aic3204.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "aic3204_loop_linein.pp" "aic3204_test.pp" "aic3204_tone_headphone.pp" "ezdsp5535.pp" "ezdsp5535_gpio.pp" "ezdsp5535_i2c.pp" "ezdsp5535_i2s.pp" "ezdsp5535_lcd.pp" "ezdsp5535_led.pp" "main.pp" 
	-$(RM) "aic3204_loop_linein.obj" "aic3204_test.obj" "aic3204_tone_headphone.obj" "ezdsp5535.obj" "ezdsp5535_gpio.obj" "ezdsp5535_i2c.obj" "ezdsp5535_i2s.obj" "ezdsp5535_lcd.obj" "ezdsp5535_led.obj" "main.obj" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

