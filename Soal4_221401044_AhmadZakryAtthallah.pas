program soal4;
uses crt;

var
    operand_1 : Integer;
    operand_2 : Integer;
    pilihan : Char;
    pilihan_operator : Integer;

begin

    repeat
        ClrScr;

        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian Real');
        writeln('5. DIV & MOD');
        write('Pilih operasi yang ingin dilakukan: ');
        readln(pilihan_operator);

        if (pilihan_operator < 1) or (pilihan_operator > 5) then
        begin
            writeln('Pilihan tidak valid.');
            halt;
        end;

        write('Masukkan operand 1: ');
        readln(operand_1);
        write('Masukkan operand 2: ');
        readln(operand_2);

        case (pilihan_operator) of
        1: writeln(operand_1, ' + ', operand_2, ' = ', operand_1 + operand_2);
        2: writeln(operand_1, ' - ', operand_2, ' = ', operand_1 - operand_2);
        3: writeln(operand_1, ' * ', operand_2, ' = ', operand_1 * operand_2);
        4: writeln(operand_1, ' / ', operand_2, ' = ', (operand_1 / operand_2):0:2);
        5:  begin 
                writeln(operand_1, ' div ', operand_2, ' = ', operand_1 div operand_2);
                writeln(operand_1, ' mod ', operand_2, ' = ', operand_1 mod operand_2);
            end;
        end;

        writeln('Apakah ingin melakukan perhitungan lagi? (Y/T)');
        readln(pilihan);
        
    until ((pilihan = 'T') or (pilihan = 't'));

end.