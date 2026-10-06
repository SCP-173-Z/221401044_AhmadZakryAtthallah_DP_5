program soal9;
uses crt, sysutils;

var
    tahun : Integer;
    bulan : Integer;
    hari : Integer;

begin
    ClrScr;

    write('Masukkan tahun: ');
    readln(tahun);
    write('Masukkan bulan: ');
    readln(bulan);

    case (bulan) of
    1 : hari := 31;
    2 :
    begin
        if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then hari := 29
        else hari := 28;
    end;
    3 : hari := 31;
    4 : hari := 30;
    5 : hari := 31;
    6 : hari := 30;
    7 : hari := 31;
    8 : hari := 31;
    9 : hari := 30;
    10 : hari := 31;
    11 : hari := 30;
    12 : hari := 31;
    end;

    writeln('Jumlah hari pada tahun ', tahun, ' bulan ', bulan, ': ', hari, ' hari');
    readln();

end.