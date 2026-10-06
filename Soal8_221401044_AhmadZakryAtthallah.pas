program soal8;
uses crt;

var
    golongan : Char;
    jam : Integer;
    gaji : uint32;
    lembur : uint32;
    bonus : uint32;
    gajiAkhir : uint32;

begin
    ClrScr;

    lembur := 0;
    bonus := 0;

    write('Masukkan golongan karyawan (A, B atau C): ');
    readln(golongan);

    if (golongan <> 'A') and (golongan <> 'B') and (golongan <> 'C') then
    begin
        writeln('Golongan tidak valid. Pastikan input masukan berupa huruf kapital.');
        readln();
        halt;
    end;

    write('Masukkan total jam kerja karyawan dalam satu minggu: ');
    readln(jam);

    case (golongan) of
    'A' : gaji := 1500000;
    'B' : gaji := 2000000;
    'C' : gaji := 2500000;
    end;

    if (jam > 40) then lembur := 20000 * (jam - 40);

    if (golongan = 'C') and (jam > 50) then bonus := 100000;

    gajiAkhir := gaji + lembur + bonus;

    writeln();
    writeln('Gaji pokok: Rp', gaji);
    writeln('Lembur: Rp', lembur);
    writeln('Bonus: Rp', bonus);
    writeln('Gaji akhir: Rp', gajiAkhir);
    readln();

end.