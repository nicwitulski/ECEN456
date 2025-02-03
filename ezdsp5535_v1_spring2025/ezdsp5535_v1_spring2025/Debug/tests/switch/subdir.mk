################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/switch/ezdsp5535.c \
../tests/switch/ezdsp5535_gpio.c \
../tests/switch/ezdsp5535_i2c.c \
../tests/switch/ezdsp5535_i2s.c \
../tests/switch/ezdsp5535_lcd.c \
../tests/switch/ezdsp5535_led.c \
../tests/switch/ezdsp5535_sar.c \
../tests/switch/ezdsp5535_sdcard.c \
../tests/switch/ezdsp5535_spiflash.c \
../tests/switch/ezdsp5535_uart.c \
../tests/switch/main.c \
../tests/switch/switch_test.c 

OBJS += \
./tests/switch/ezdsp5535.o \
./tests/switch/ezdsp5535_gpio.o \
./tests/switch/ezdsp5535_i2c.o \
./tests/switch/ezdsp5535_i2s.o \
./tests/switch/ezdsp5535_lcd.o \
./tests/switch/ezdsp5535_led.o \
./tests/switch/ezdsp5535_sar.o \
./tests/switch/ezdsp5535_sdcard.o \
./tests/switch/ezdsp5535_spiflash.o \
./tests/switch/ezdsp5535_uart.o \
./tests/switch/main.o \
./tests/switch/switch_test.o 

C_DEPS += \
./tests/switch/ezdsp5535.d \
./tests/switch/ezdsp5535_gpio.d \
./tests/switch/ezdsp5535_i2c.d \
./tests/switch/ezdsp5535_i2s.d \
./tests/switch/ezdsp5535_lcd.d \
./tests/switch/ezdsp5535_led.d \
./tests/switch/ezdsp5535_sar.d \
./tests/switch/ezdsp5535_sdcard.d \
./tests/switch/ezdsp5535_spiflash.d \
./tests/switch/ezdsp5535_uart.d \
./tests/switch/main.d \
./tests/switch/switch_test.d 


# Each subdirectory must supply rules for building sources it contributes
tests/switch/%.o: ../tests/switch/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


