program soal5;
uses crt;

var
    mahasiswa : Integer;
    tugas : Integer;
    nilai : Integer;
    hasil : Integer;
    rata_rata : Real;
    i : Integer;
    j : Integer;
    total_lulus : Integer;

begin
    ClrScr;

    write('Masukkan jumlah mahasiswa: ');
    readln(mahasiswa);
    write('Masukkan jumlah tugas: ');
    readln(tugas);

    total_lulus := 0;

    for i := 1 to mahasiswa do
    begin
        ClrScr;
        writeln('Mahasiswa ke-', i);
        hasil := 0;

        for j := 1 to tugas do
        begin
            write('Nilai tugas ', j, ': ');
            readln(nilai);
            hasil := hasil + nilai;
        end;

        rata_rata := hasil / tugas;
        if (rata_rata >= 65) then
        begin
            writeln('Mahasiswa ke-', i, ' LULUS');
            writeln('Rata-rata nilai tugas: ', rata_rata:0:2);
            total_lulus := total_lulus + 1;
            readln();
        end
        else
        begin
            writeln('Mahasiswa ke-', i, ' TIDAK LULUS');
            writeln('Rata-rata nilai tugas: ', rata_rata:0:2);
            readln();
        end;

    end;

    ClrScr;
    writeln('Total mahasiswa lulus: ', total_lulus);
    writeln('Total mahasiswa tidak lulus: ', mahasiswa - total_lulus);
    readln();
    
end.