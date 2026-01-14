# ARM_CortexM_Practice

This repository contains my hands-on practice and experiments with **ARM Cortex-M microcontrollers**, particularly STM32 devices.  
It showcases my understanding of low-level microcontroller programming, peripheral interfacing, and embedded system fundamentals.

---

## **Purpose**
The purpose of this repository is to:

- Demonstrate practical knowledge of **Cortex-M architecture and bare-metal programming**  
- Showcase ability to write **low-level embedded firmware** without relying on high-level abstractions  
- Serve as a **learning portfolio** for embedded systems development  
- Provide reference material for **assembly-level programming, memory management, and peripheral control**

---

## **Topics Covered**

### 1. ARM Cortex-M Architecture
- CPU registers: R0-R12, SP, LR, PC  
- Stack pointers (MSP/PSP) and stack frame behavior  
- Program counter, link register, and function call mechanism  
- Thumb-2 instruction set and conditional execution

### 2. Memory & Startup
- MCU memory regions: Flash, RAM, stack, heap  
- Linker scripts and memory layout  
- Section handling: `.text`, `.data`, `.bss`  
- Startup sequence: vector table, reset handler, `.data` copy, `.bss` zero, calling `main()`

### 3. Bare-Metal Programming
- Register-level peripheral control: GPIO, UART, Timers, ADC  
- Interrupt handling and NVIC configuration  
- Peripheral initialization and control without HAL  
- Writing efficient, maintainable bare-metal code

### 4. Assembly-Level Programming
- Thumb-2 instruction practice  
- Data movement (`MOV`, `LDR`, `STR`)  
- Branching and conditional execution (`B`, `BL`, `IT`)  
- Simple exercises: LED blinking, UART transmission

### 5. Embedded System Concepts
- Cortex-M boot sequence and vector table  
- Stack, heap, and context switching  
- Handling faults: HardFault, BusFault, UsageFault  

---

## **Tools Used**
- **Keil µVision** – for Thumb-2 assembly exercises and bare-metal C projects  
- **STM32CubeIDE** – for faster peripheral integration and optional HAL practice  
- **ST-LINK / J-Link** – for flashing and debugging  
- **OpenOCD / GCC Toolchain (optional)** – for advanced bare-metal experiments  
- **Markdown / Docs** – for documenting memory maps, registers, and startup sequences

---

## **How to Use This Repository**
- Explore **assembly practice exercises** for low-level instruction understanding  
- Explore **bare-metal projects** for register-level peripheral control  
- Refer to **Docs folder** for memory maps, register references, startup sequences, and notes  
- Learn by combining ASM experiments with bare-metal C projects to understand MCU behavior thoroughly
