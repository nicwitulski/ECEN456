################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
ezdsp5535.obj: ../ezdsp5535.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/inc" --include_path="../../../include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="ezdsp5535.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ezdsp5535_gpio.obj: ../ezdsp5535_gpio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/inc" --include_path="../../../include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="ezdsp5535_gpio.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ezdsp5535_i2c.obj: ../ezdsp5535_i2c.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/inc" --include_path="../../../include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="ezdsp5535_i2c.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ezdsp5535_lcd.obj: ../ezdsp5535_lcd.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/inc" --include_path="../../../include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="ezdsp5535_lcd.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ezdsp5535_led.obj: ../ezdsp5535_led.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/inc" --include_path="../../../include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="ezdsp5535_led.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ezdsp5535_uart.obj: ../ezdsp5535_uart.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/inc" --include_path="../../../include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="ezdsp5535_uart.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/inc" --include_path="../../../include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

uart_test.obj: ../uart_test.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN498/ezdsp5535_v1_spring2024/c55xx_csl/inc" --include_path="../../../include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="uart_test.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


