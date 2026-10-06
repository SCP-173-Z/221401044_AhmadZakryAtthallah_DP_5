program soal7;
uses crt;

var
    kendaraan : Char;
    tarif : uint32;
    jam : Integer;

begin
    ClrScr;

    write('Masukkan jenis kendaraan (M = Mobil, K = Motor, B = Bus): ');
    readln(kendaraan);

    if (kendaraan <> 'M') and (kendaraan <> 'K') and (kendaraan <> 'B') then
    begin
        writeln('Jenis kendaraan tidak valid.');
        readln();
        halt;
    end;


    write('Masukkan waktu jam parkir: ');
    readln(jam);

    case (kendaraan) of
    'M' : 
    begin
        if (jam < 10) then tarif := 5000 + 3000 * (jam - 1)
        else tarif := 30000;
    end;
    'K' : 
    begin
        if (jam < 10) then tarif := 2000 + 1000 * (jam - 1)
        else tarif := 10000;
    end;
    'B' : 
    begin
        if (jam < 10) then tarif := 10000 + 5000 * (jam - 1)
        else tarif := 50000;
    end;
    end;

    writeln('Tarif parkir: Rp', tarif);
    readln();

end.