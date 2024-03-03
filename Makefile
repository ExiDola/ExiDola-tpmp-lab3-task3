# Makefile for Hello World project

runner: /home/daniil/tpmp-lab3-task3/obj/main.o /home/daniil/tpmp-lab3-task3/obj/students.o /home/daniil/tpmp-lab3-task3/obj/countries.o /home/daniil/tpmp-lab3-task3/obj/firstTask.o
	gcc -o runner /home/daniil/tpmp-lab3-task3/obj/main.o /home/daniil/tpmp-lab3-task3/obj/students.o /home/daniil/tpmp-lab3-task3/obj/countries.o /home/daniil/tpmp-lab3-task3/obj/firstTask.o

/home/daniil/tpmp-lab3-task3/obj/main.o: /home/daniil/tpmp-lab3-task3/src/main.c
	gcc -c /home/daniil/tpmp-lab3-task3/src/main.c -o /home/daniil/tpmp-lab3-task3/obj/main.o
	
/home/daniil/tpmp-lab3-task3/obj/students.o: /home/daniil/tpmp-lab3-task3/src/students.c
	gcc -c /home/daniil/tpmp-lab3-task3/src/students.c -o /home/daniil/tpmp-lab3-task3/obj/students.o
	
/home/daniil/tpmp-lab3-task3/obj/countries.o: /home/daniil/tpmp-lab3-task3/src/countries.c
	gcc -c /home/daniil/tpmp-lab3-task3/src/countries.c -o /home/daniil/tpmp-lab3-task3/obj/countries.o

/home/daniil/tpmp-lab3-task3/obj/firstTask.o: /home/daniil/tpmp-lab3-task3/src/firstTask.c
	gcc -c /home/daniil/tpmp-lab3-task3/src/firstTask.c -o /home/daniil/tpmp-lab3-task3/obj/firstTask.o
	
clean:
	rm -f /home/daniil/tpmp-lab3-task3/obj/*.o /home/daniil/tpmp-lab3-task3/runner

