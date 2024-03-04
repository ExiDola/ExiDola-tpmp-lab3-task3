# Makefile for Hello World project

OBJ_DIR := /home/daniil/tpmp-lab3-task3/obj
SRC_DIR := /home/daniil/tpmp-lab3-task3/src
BIN_DIR := /home/daniil/tpmp-lab3-task3

runner: $(OBJ_DIR)/main.o $(OBJ_DIR)/students.o $(OBJ_DIR)/countries.o $(OBJ_DIR)/firstTask.o
	gcc -o $(BIN_DIR)/runner $(OBJ_DIR)/main.o $(OBJ_DIR)/students.o $(OBJ_DIR)/countries.o $(OBJ_DIR)/firstTask.o

$(OBJ_DIR)/main.o: $(SRC_DIR)/main.c
	gcc -c $(SRC_DIR)/main.c -o $(OBJ_DIR)/main.o
	
$(OBJ_DIR)/students.o: $(SRC_DIR)/students.c
	gcc -c $(SRC_DIR)/students.c -o $(OBJ_DIR)/students.o
	
$(OBJ_DIR)/countries.o: $(SRC_DIR)/countries.c
	gcc -c $(SRC_DIR)/countries.c -o $(OBJ_DIR)/countries.o

$(OBJ_DIR)/firstTask.o: $(SRC_DIR)/firstTask.c
	gcc -c $(SRC_DIR)/firstTask.c -o $(OBJ_DIR)/firstTask.o
	
clean:
	rm -f $(OBJ_DIR)/*.o $(BIN_DIR)/runner

