program soal1;
uses crt;

var
    N : Integer;
    i : Integer;
    total : uint32;
    totalAkhir : uint32;
    harga : uint32;
    diskon : uint32;

begin
    ClrScr;

    write('Masukkan jumlah barang yang dibeli: ');
    readln(N);


    total := 0;
    
    for i := 1 to N do
    begin
        write('Harga barang ke-', i, ': ');
        readln(harga);
        total := total + harga;
    end;

    if (total < 100000) then diskon := 0
    else if (total >= 100000) and (total < 500000) then diskon := total div 10
    else diskon := total div 5;

    totalAkhir := total - diskon;

    ClrScr;

    writeln('=== Rincian Belanja ===');
    writeln('Jumlah barang yang dibeli: ', N);
    writeln('Total sebelum diskon: Rp', total);
    writeln('Besar diskon: Rp', diskon);
    writeln('Total setelah diskon: Rp', totalAkhir);

    readln();

end.