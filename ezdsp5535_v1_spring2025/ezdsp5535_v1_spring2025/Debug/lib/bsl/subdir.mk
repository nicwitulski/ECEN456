################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/bsl/ezdsp5535.c \
../lib/bsl/ezdsp5535_gpio.c \
../lib/bsl/ezdsp5535_i2c.c \
../lib/bsl/ezdsp5535_i2s.c \
../lib/bsl/ezdsp5535_lcd.c \
../lib/bsl/ezdsp5535_led.c \
../lib/bsl/ezdsp5535_sar.c \
../lib/bsl/ezdsp5535_sdcard.c \
../lib/bsl/ezdsp5535_spiflash.c \
../lib/bsl/ezdsp5535_uart.c 

OBJS += \
./lib/bsl/ezdsp5535.o \
./lib/bsl/ezdsp5535_gpio.o \
./lib/bsl/ezdsp5535_i2c.o \
./lib/bsl/ezdsp5535_i2s.o \
./lib/bsl/ezdsp5535_lcd.o \
./lib/bsl/ezdsp5535_led.o \
./lib/bsl/ezdsp5535_sar.o \
./lib/bsl/ezdsp5535_sdcard.o \
./lib/bsl/ezdsp5535_spiflash.o \
./lib/bsl/ezdsp5535_uart.o 

C_DEPS += \
./lib/bsl/ezdsp5535.d \
./lib/bsl/ezdsp5535_gpio.d \
./lib/bsl/ezdsp5535_i2c.d \
./lib/bsl/ezdsp5535_i2s.d \
./lib/bsl/ezdsp5535_lcd.d \
./lib/bsl/ezdsp5535_led.d \
./lib/bsl/ezdsp5535_sar.d \
./lib/bsl/ezdsp5535_sdcard.d \
./lib/bsl/ezdsp5535_spiflash.d \
./lib/bsl/ezdsp5535_uart.d 


# Each subdirectory must supply rules for building sources it contributes
lib/bsl/%.o: ../lib/bsl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


