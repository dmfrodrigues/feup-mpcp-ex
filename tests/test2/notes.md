# Notas

| Secção de código | Descrição |
|------------------|-----------|
| `.align`         | alinha todo o conteúdo seguinte. `.align n` alinha por 2^n bytes |
| `.text`          | código e dados constantes (FLASH) |
| `.data`          | variáveis (RAM) |

⚠️ variáveis inicializadas vão para `.data`, mas o valor inicial vai para `.text`; ex.: `int a = 12;`, `a` vai para `.data`, mas `12` vai para `.text`, porque é constante.

| Endereços   | Operação           |
|-------------|--------------------|
| `[Xn, #i]`  | `addr = Xn+i`      |
| `[Xn], #i`  | `addr = Xn; Xn+=i` |
| `[Xn, #i]!` | `Xn+=i; addr = Xn` |

### Convenções

| Registos | Convenção |
|----------|-----------|
| X0-X7    | **argumentos**: livres de ser alterados por qualquer subrotina |
| X8       | **NÃO USAR** |
| X9-X15   | **registos temporários**: livres de ser alterados por qualquer subrotina |
| X16-X18  | **NÃO USAR** |
| X19-X28  | registos que devem ser **conservados pela função chamada** (i.e., se uma rotina usar esses registos deve guardá-los e depois restaurá-los) |
| X29      | `FP` **Frame Pointer** |
| X30      | `LR` **Link Register** |
| X31      | `SP` **Stack Pointer** |

⚠️ **NÃO USAR:** X8, X16-X18, X29-X31

Iniciar frame:
```armasm
STP X29, X30, [SP, #-16]!
MOV X29, SP			//copia o valor de SP para X29
```

Terminar frame:
```armasm
LPD X29, X30, [SP], #16
RET
```

Extensão de sinal:
- `LDR Xn` não faz nenhuma extensão
- `LDRB`, `LDRH`, `LDR Wn` fazem 0-extensão
- `LDRSB`, `LDRSH`, `LDRSW Xn` fazem extensão de sinal
