################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
led_test.obj: ../led_test.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN456/ezdsp5535_v1_spring2025/c55xx_csl/inc" --include_path="Z:/Documents/UNL/ECEN456/ezdsp5535_v1_spring2025/include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="led_test.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccsv6/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 -g --define=c5535 --include_path="C:/ti/ccsv6/tools/compiler/c5500_4.4.1/include" --include_path="Z:/Documents/UNL/ECEN456/ezdsp5535_v1_spring2025/c55xx_csl/inc" --include_path="Z:/Documents/UNL/ECEN456/ezdsp5535_v1_spring2025/include" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


