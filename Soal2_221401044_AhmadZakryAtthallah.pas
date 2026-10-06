program soal2;
uses crt;

var
    password : String;
    input : String;
    attempts : Integer;

begin
    ClrScr;
    attempts := 1;
    password := 'pascal123'; //super secret password...

    repeat

        if (attempts < 4) then
        begin
            write('Masukkan kata sandi (attempts ', attempts, '/3): ');
            readln(input);
            attempts := attempts + 1;
        end
        else
        begin
            writeln('Akses Ditolak! Akun Terkunci.');
            readln();
            halt;
        end;

        if (input = password) then
        begin
            writeln('Login Berhasil! Selamat Datang');
            break;
        end;
        
    until (false);

    readln();
    
end.