#include<stdio.h>

// Idade e Altura
typedef struct Base {
	float altura;
	int idade;
} Base;


// Um Guerreiro que tem forca
// Um Mago que tem magia
// Um Curandeiro que tem cura
enum CLASSE {Guerreiro, Mago, Curandeiro};

typedef struct Personagem {
	enum CLASSE sub;
	Base status;
	union {
		struct { int forca; }; // Guerreiro
		struct { float magia; }; // Mago
		struct { int cura; }; // Curandeiro
	};
} Personagem;

int main () {
	Personagem p1 = { Guerreiro, {1.9, 23}, {.forca=50}};
	Personagem p2 = { Curandeiro, {1.7, 35}, {.cura=90}};
	
	printf("Guerreiro - Altura: %f - Idade: %d - Forca: %d", p1.status.altura, p1.status.idade, p1.forca);
	printf("\n");
	printf("Curandeiro - Altura: %f - Idade: %d - Magia: %f", p2.status.altura, p2.status.idade, p2.cura);
	
	return 0;
}
