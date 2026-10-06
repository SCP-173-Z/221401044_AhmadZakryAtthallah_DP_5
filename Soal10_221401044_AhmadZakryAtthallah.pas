program soal10;
uses crt;

var
    hari : Integer;

begin
    ClrScr;
    write('Masukkan hari (1 = senin; 7 = minggu): ');
    readln(hari);

    ClrScr;

    case (hari) of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
    else writeln('Out of Range');
    end;

    readln();

end.