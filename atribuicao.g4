grammar atribuicao;

init: bloco+; 
bloco: declaracao | atribuicao | iff | input | print | whilee | forr;
declaracao: tipo var (operador expre)? fim;
atribuicao: var operador expre fim;
iff: se condicao entao abreColc bloco+ fechaColc (elseiff+)? (senao abreColc bloco+ fechaColc)?;
expre: termo expreL;
expreL: mais termo expreL | menos termo expreL | ;
termo: fator termoL;
termoL: mult fator termoL | div fator termoL | ;
fator: letras | var | num | abrePar expre fechaPar;
input: var operador leia abrePar fechaPar fim;
print: escreva abrePar (letras | expre) fechaPar fim;
condicao: expre comp expre;
elseiff: senaose condicao entao abreColc bloco+ fechaColc; 
whilee: enquanto condicao abreColc bloco+ fechaColc;
forr: para abrePar (tipo)? var operador expre virg expre comp expre virg var operador expre fechaPar abreColc bloco+ fechaColc;
tipo: 'mario' | 'luigi' | 'peach';
operador: '=';
fim: ';';
var: ID;
num: NU;
letras: LE;
se: 'toad';
comp: '>' | '<' | '<=' | '>=' | '==' | '!=';
entao: 'yoshi';
abreColc: '[';
fechaColc: ']';
abrePar: '(';
fechaPar: ')';
mais: '+';
menos: '-';
div: '/';
mult: '*';
virg: ',';
senao: 'bowser';
senaose: 'toadette';
leia: 'wario';
escreva: 'waluigi';
enquanto: 'daisy';
para: 'rosalina';

ID: ([a-zA-Z])([a-zA-Z0-9])*;
NU: [0-9]+('.'[0-9]*)?;
LE: '"'[a-zA-Z0-9@#:? ]+'"';
Ws: [ \t\r\n]+ -> skip;
