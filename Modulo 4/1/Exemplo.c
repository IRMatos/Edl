#include<stdio.h>

enum MEMBRO {Mestre, Aluno};
struct Membro {
	enum MEMBRO sub;
	union {
		struct { int alunos; int aulas; }; // Mestre
		struct { int periodo; float cr; }; // Aluno
	};
};

void main () {
	struct Membro m = { Mestre, {60, 7} };
	
	printf("Alunos: %d - Aulas: %d", m.alunos, m.aulas);
	
	return 0;
}
