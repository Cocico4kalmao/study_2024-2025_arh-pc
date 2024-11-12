# Makefile для лабораторных работ по Архитектуре компьютера

# Компилятор
CC = nasm
# Линковщик
LD = ld

# Флаги компилятора
CFLAGS = -f elf
LDFLAGS = -m elf_i386

# Имя исполняемого файла
TARGET = program

# Объектные файлы
OBJS = main.o

# Цель по умолчанию
all: $(TARGET)

# Правило сборки исполняемого файла
$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

# Правило компиляции ассемблерных файлов
%.o: %.asm
	$(CC) $(CFLAGS) $<

# Очистка собранных файлов
clean:
	rm -f *.o $(TARGET)

# Запуск программы
run: $(TARGET)
	./$(TARGET)
