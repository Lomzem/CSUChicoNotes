---
id: quiz-security-arch-design
aliases: []
tags: []
---

1) What is the correct order of an information system, starting with the highest level (the part end-user directly interacts with is #1)
=> application program, utilities, operating system, computer hardware (memory and CPU)

2) One mechanism the CPU and OS use is protection rings to separate critical components through boundaries. Which of the following would be placed in the outermost ring?
- I/O drivers/utilities
- OS Kernel
- Remaining parts of OS
- Application and programs
=> Apps/programs

3) With multitasking
=> Several programs can be running within the computer, each taking turns using the processor

4) With multithreading
=> The OS has ability to execute different parts of a program simultaneously

5) Multiprocessing
=> is the coordinated processing of two or more programs by a system that contains parallel processors

6) Which of the following is true about Symmetric multiprocessing?
- Can have its own memory (not usually own OS)
- Data paths allow messages to be sent between the processors
- The processors share memory and the I/O bus
- Multiple copies of the OS are in charge of all the processors
=> The processors share memory and the I/O bus

7) Which of the following is true about Massively parallel processing?
- A single copy of the OS is in charge of all the processors
- Always has its own OS
- The processors share memory and the I/O bus
- Data paths allow messages to be sent between the processors
=> Data paths allow messages to be sent between the processors

8) The TOC/TOU vulnerability occurs when
=> One process passes pointers to parameters to the OS at the same time another process modifies the parameters

9) What is the vulnerability associated with CPU states?
=> When a system crashes, there is a core dump of its internal state, if the core dump is not secured, then unauthorized users could access it

10) How do you protect against buffer overflow?
=> Set a base/limit for the register and user/privileged modes

11) Which type of memory outputs on both the rising and falling edges of the clock cycle?
=> DDR SDRAM
