program soal3;
uses crt;

var
    pilihan : Integer;
    i : Integer;
    N : Integer;

begin
    ClrScr;

    writeln('1. Deret Ganjil');
    writeln('2. Deret Genap');
    write('Pilih deret yang diinginkan: ');
    readln(pilihan);

    if (pilihan <> 1) and (pilihan <> 2) then
    begin
        writeln('Pilihan tidak valid!');
        halt;
    end;

    write('Masukkan nilai batas deret: ');
    readln(N);

    i := 0;
    while (i <> N) do
    begin
        i := i + 1;

        if (i mod 5 = 0) then continue;

        if (i mod 2 = 0) then
        begin
            if (pilihan = 1) then continue;
            write(i, ' ');
        end
        else
        begin
            if (pilihan = 2) then continue;
            write(i, ' ');
        end;

    end;

    readln();
    
end.