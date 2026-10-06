program soal6;
uses crt;

var
    nilaiTugas : Integer;
    nilaiUTS : Integer;
    nilaiUAS : Integer;
    nilaiAkhir : Integer;
    kehadiran : Integer;
    status : String;
    indeks : Char;

begin
    ClrScr;

    write('Masukkan nilai tugas mahasiswa: ');
    readln(nilaiTugas);
    write('Masukkan nilai UTS mahasiswa: ');
    readln(nilaiUTS);
    write('Masukkan nilai UAS mahasiswa: ');
    readln(nilaiUAS);
    write('Masukkan jumlah kehadiran mahasiswa: '); //dari 16 pertemuan
    readln(kehadiran);

    nilaiAkhir := 30 * nilaiTugas + nilaiUTS * 30 + nilaiUAS * 40;
    nilaiAkhir := nilaiAkhir div 100;

    writeln();

    if (nilaiAkhir >= 60) and (kehadiran >= 13) then status := 'LOLOS'
    else status := 'TIDAK LOLOS';

    case (nilaiAkhir) of
    0..49 : indeks := 'F';
    50..59 : indeks := 'D';
    60..74 : indeks := 'C';
    75..84 : indeks := 'B';
    85..100 : indeks := 'A';
    else indeks := 'Z';
    end;

    writeln('Mahasiswa ', status, '. Nilai akhir: ', nilaiAkhir, '. Indeks mahasiswa: ', indeks);
    readln();
    
end.