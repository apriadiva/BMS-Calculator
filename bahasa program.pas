program kalkulator_bms;
uses math,crt;

label loginulang;

const maks = 10;

type
    user = record
    pass, nama: string;
    end;
    matriks = array[1..maks,1..maks] of real;
    matriks2 = array[1..maks,1..maks+1] of real;
    arrint = array [1..100] of real;
    arr = array[1..1000] of real;

procedure welcome(teks : string);
var i : integer;
begin
  i := length(teks)+2;
  gotoXY(51,2); textbackground(7); textcolor(5); writeln('*',stringOfChar('*',i),'*');
  gotoXY(51,3); writeln('* ',teks,' *');
  gotoXY(51,4); writeln('*',stringOfChar('*',i),'*');
end;

procedure menu(teks : string);
var i : integer;
begin
  i := length(teks)+2;
  textbackground(7); textcolor(5); writeln('+',stringOfChar('=',i),'+');
  writeln('| ',teks,' |');
  writeln('+',stringOfChar('=',i),'+');
end;

procedure inikalkulatorbasic;
var i, jumlah_bilangan, angka1, angka2, pilih : integer;
    hasil, bilangan, jumlah : real;
    angka : array of real;
    operasi: string;

procedure menu_kalkulatorbasic;
begin
  gotoXY(47,2); textbackground(7); textcolor(5); writeln('***************************************');
  gotoXY(47,3); writeln('*           KALKULATOR BASIC          *');
  gotoXY(47,4); writeln('***************************************');
  writeln;
  gotoXY(47,7); writeln('   +===============================+   ');
  gotoXY(47,8); writeln('   +===============================+   ');
  gotoXY(47,9); writeln('   |  No. |      DAFTAR MENU       |   ');
  gotoXY(47,10); writeln('   +===============================+   ');
  gotoXY(47,11); writeln('   |   1. |      Penjumlahan       |   ');
  gotoXY(47,12); writeln('   |   2. |      Pengurangan       |   ');
  gotoXY(47,13); writeln('   |   3. |      Perkalian         |   ');
  gotoXY(47,14); writeln('   |   4. |      Pembagian         |   ');
  gotoXY(47,15); writeln('   |   5. |      Div               |   ');
  gotoXY(47,16); writeln('   |   6. |      Mod               |   ');
  gotoXY(47,17); writeln('   +===============================+   ');
  gotoXY(47,18); writeln('   +===============================+   ');
end;

begin
  menu_kalkulatorbasic;
    writeln;
    gotoXY(53,20); write('Pilih operator bilangan : '); readln(pilih);
    clrscr;
    if pilih = 1 then
    begin
      gotoXY(47,2); writeln('===Operasi Penjumlahan===');
      writeln;
      write('Jumlah bilangan yang ingin dijumlahkan : '); readln(jumlah_bilangan);
      jumlah := 0;
      for i := 1 to jumlah_bilangan do
      begin
        write('Bilangan ke-',i,' : '); readln(bilangan);
        jumlah := jumlah + bilangan;
      end;
      writeln;
      writeln('Hasil penjumlahan : ',jumlah:0:2);
    end
    else if pilih = 2 then
    begin
      gotoXY(47,2); writeln('===Operasi Pengurangan===');
      writeln;
      write('Jumlah bilangan yang ingin dikurangkan : '); readln(jumlah_bilangan);
      write('Bilangan ke-1 : '); readln(jumlah);
      for i := 2 to jumlah_bilangan do
      begin
        write('Bilangan ke-',i,' : '); readln(bilangan);
        jumlah := jumlah - bilangan;
      end;
      writeln;
      writeln('Hasil pengurangan : ',jumlah:0:2);
    end
    else if pilih = 3 then
    begin
      gotoXY(47,2); writeln('===Operasi Perkalian===');
      writeln;
      write('Jumlah bilangan yang ingin dikali : '); readln(jumlah_bilangan);
      write('Bilangan ke-1 : '); readln(jumlah);
      for i := 2 to jumlah_bilangan do
      begin
        write('Bilangan ke-',i,' : '); readln(bilangan);
        jumlah := jumlah*bilangan;
      end;
      writeln;
      writeln('Hasil perkalian : ',jumlah:0:2);
    end
    else if pilih = 4 then
    begin
      gotoXY(47,2); writeln('===Operasi Pembagian===');
      writeln;
      write('Jumlah bilangan yang ingin dibagi : '); readln(jumlah_bilangan);
      SetLength(angka, jumlah_bilangan);
      for i := 0 to jumlah_bilangan - 1 do
      begin
        write('Bilangan ke-',i+1,' : '); readln(angka[i]);
      end;
      hasil := angka[0];
      for i := 1 to jumlah_bilangan - 1 do
      begin
        hasil := hasil/angka[i];
      end;
      writeln;
      writeln('Hasil pembagian : ',hasil:0:2);
    end
    else if pilih = 5 then
    begin
      gotoXY(55,2); writeln('===Div===');
      writeln;
      write('Masukkan angka 1 : '); readln(angka1);
      write('Masukkan angka 2 : '); readln(angka2);
      jumlah := angka1 div angka2;
      clrscr;
      gotoXY(3,2); writeln(angka1,' div ',angka2);
      gotoXY(3,3); writeln('Hasil : ',jumlah:0:0);
    end
    else if pilih = 6 then
    begin
      gotoXY(55,2); writeln('===Mod===');
      writeln;
      write('Masukkan angka 1 : '); readln(angka1);
      write('Masukkan angka 2 : '); readln(angka2);
      jumlah := angka1 mod angka2;
      clrscr;
      gotoXY(3,2); writeln(angka1,' mod ',angka2);
      gotoXY(3,3); writeln('Hasil : ',jumlah:0:0);
    end;

end;

procedure inikalkulatormatriks;
var
menu,a,b,i,j,k,m,n,a1,a2,b1,b2 : integer;
M1,M2,mat : matriks;
trace,du : real;

procedure menu_matriks;
label ulang;
begin
  ulang:
  clrscr;
  gotoxy(52,7);textbackground(7);textcolor(5);writeln('*******************************************');
  gotoxy(52,8);writeln('*           KALKULATOR MATRIKS            *');
  gotoxy(52,9);writeln('*******************************************');
  gotoxy(55,12);textbackground(7);textcolor(5);writeln('+===================================+');
  gotoxy(55,13);writeln('+===================================+');
  gotoxy(55,14);writeln('|  NO.  |        DAFTAR MENU        |');
  gotoxy(55,15);writeln('+===================================+');
  gotoxy(55,16);writeln('|   1.  |   Penjumlahan             |');
  gotoxy(55,17);writeln('|   2.  |   Pengurangan             |');
  gotoxy(55,18);writeln('|   3.  |   Perkalian               |');
  gotoxy(55,19);writeln('|   4.  |   Determinan              |');
  gotoxy(55,20);writeln('|   5.  |   Invers                  |');
  gotoxy(55,21);writeln('|   6.  |   Transpose               |');
  gotoxy(55,22);writeln('|   7.  |   Trace                   |');
  gotoxy(55,23);writeln('|   8.  |   Eliminasi Gauss-Jordan  |');
  gotoxy(55,24);writeln('+===================================+');
  gotoxy(55,25);writeln('+===================================+');
  gotoxy(51,29);write('MASUKKAN MENU YANG INGIN DIGUNAKAN (ANGKA) : ');readln(menu);
  if (menu<1) or (menu>8) then
  begin
    gotoxy(58,33);textcolor(12);writeln('Inputan tidak valid');
    gotoxy(58,34);writeln('Tekan Enter untuk input ulang');
    readln;
    goto ulang;
  end;
end;

procedure judul;
begin
  gotoxy(52,1);textbackground(7);textcolor(5);writeln('*******************************************');
  gotoxy(52,2);writeln('*           KALKULATOR MATRIKS            *');
  gotoxy(52,3);writeln('*******************************************');
  gotoxy(1,5);
end;

procedure TambahKurangMatriks(var hasil:matriks;X:matriks;Y:matriks);
var i,j : integer;
begin
  for i := 1 to m do
  begin
    for j := 1 to n do
    begin
        if menu = 1 then hasil[i, j] := X[i,j]+Y[i,j]
        else hasil[i, j] := X[i,j]-Y[i,j]
    end;
  end;
end;

procedure PerkalianMatriks(var c:matriks;x:matriks;y:matriks);
var i,j,k : integer;
begin
  for i := 1 to a1 do
   for j := 1 to b2 do
   begin
     c[i,j] := 0;
     for k := 1 to b1 do
      c[i,j] := c[i,j] + (x[i,k] * y[k,j]);
   end;
end;

procedure InputMatriks(var A:matriks;x:integer;y:integer);
var i,j : integer;
begin
  for i := 1 to x do
  begin
   for j := 1 to y do
   begin
     write('entri-[', i, '][', j, ']: ');
     readln(A[i, j]);
   end;
  end;
end;

procedure CetakMatriks(Var A:matriks;x:integer;y:integer;letak:integer);
var i,j : integer;
begin
  for i := 1 to x do
  begin
    gotoxy(66,letak+i);
    for j := 1 to y do
    begin
      write(A[i,j]:8:2, ' ');
    end;
  end;
end;

procedure OBE1(var M: Matriks; n, baris: integer; skala: real);
var
  j : integer;
begin
  for j := 1 to n do
  begin
    M[baris, j] := M[baris, j] * skala;
  end;
end;

procedure OBE2(var M: Matriks; n, baris1, baris2: integer; skala: real);
var
  j : integer;
begin
  for j := 1 to n do
  begin
    M[baris2, j] := M[baris2, j] + (M[baris1, j] * skala);
  end;
end;

procedure MatriksIdentitas(var M: Matriks; n: integer);
var
  i, j: integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      if i = j then
        M[i, j] := 1
      else
        M[i, j] := 0;
    end;
  end;
end;

procedure InversMatriks(var M: Matriks; n: integer; var Invers: Matriks);
var
  du, faktor: real;
  i,j,k:integer;
begin
  MatriksIdentitas(Invers, n);

  for i := 1 to n do
  begin
    du := M[i, i];
    {if du = 0 then
    begin
      writeln('Matriks tidak memiliki invers.');
      exit;
    end;}

    OBE1(M, n, i, 1 / du);
    OBE1(Invers, n, i, 1 / du);

    for j := 1 to n do
    begin
      if j <> i then
      begin
        faktor := -M[j, i];
        OBE2(M, n, i, j, faktor);
        OBE2(Invers, n, i, j, faktor);
      end;
    end;
  end;
end;


procedure TukarBaris(var A: matriks; n, i, j: integer);
var
  k: integer;
  temp: real;
begin
  for k := 1 to n do
  begin
    temp := A[i, k];
    A[i, k] := A[j, k];
    A[j, k] := temp;
  end;
end;

function HitungDeterminan(A: Matriks; n: integer): real;
var
  det: real;
  i, j, k: integer;
  temp: matriks;
begin
  det := 0;

  if n = 1 then
    det := A[1, 1]
  else if n = 2 then
    det := A[1, 1] * A[2, 2] - A[1, 2] * A[2, 1]
  else
  begin
    for k := 1 to n do
    begin
      for i := 2 to n do
      begin
        for j := 1 to n do
        begin
          if j < k then
            temp[i-1, j] := A[i, j]
          else if j > k then
            temp[i-1, j-1] := A[i, j];
        end;
      end;

      det := det + A[1, k] * HitungDeterminan(temp, n-1) * power(-1, k+1);
    end;
  end;

  HitungDeterminan := det;
end;

procedure eliminasigaussjordan(var mat: matriks;m,n:integer);
var i,j,k:integer;
    faktor : real;
begin
  for i := 1 to m do
  begin
    // Pilih baris utama
    if mat[i, i] = 0 then
    begin
      writeln('Error: Tidak dapat memilih baris utama.');
      Exit;
    end;

    // Ubah baris utama menjadi 1
    faktor := mat[i, i];
    for j := i to n do
      mat[i, j] := mat[i, j] / faktor;

    // Nolkan elemen di bawah dan di atas baris utama
    for j := 1 to m do
    begin
      if j <> i then
      begin
        faktor := mat[j, i];
        for k := 1 to n do
          mat[j, k] := mat[j, k] - faktor * mat[i, k];
      end;
    end;
  end;
end;

begin
  clrscr;
  menu_matriks;
  clrscr;
  if menu = 1 then
  begin
    write('Masukkan jumlah baris : ');readln(m);
    write('Masukkan jumlah kolom : ');readln(n);
    writeln;
    //matriks A
    writeln('Masukkan entri-entri matriks A :');
    InputMatriks(M1,m,n);
    writeln;
    //matriks B
    writeln('Masukkan entri-entri matriks B :');
    InputMatriks(M2,m,n);
    clrscr;
    judul;
    gotoxy(52,5);write('Matriks A   = ');
    CetakMatriks(M1,m,n,4);
    gotoxy(52,6+m);writeln('Matriks B   =');
    CetakMatriks(M2,m,n,5+m);

    TambahKurangMatriks(mat,M1,M2);

    gotoxy(52,7+2*m);writeln('Hasil A + B = ');
    cetakmatriks(mat,m,n,6+2*m);
  end

  else if menu = 2 then
  begin
    write('Masukkan jumlah baris : ');readln(m);
    write('Masukkan jumlah kolom : ');readln(n);
    writeln;
    //matriks A
    writeln('Masukkan entri-entri matriks A :');
    InputMatriks(M1,m,n);
    writeln;
    //matriks B
    writeln('Masukkan entri-entri matriks B :');
    InputMatriks(M2,m,n);
    clrscr;
    judul;
    gotoxy(52,5);write('Matriks A   = ');
    CetakMatriks(M1,m,n,4);
    gotoxy(52,6+m);writeln('Matriks B   =');
    CetakMatriks(M2,m,n,5+m);

    TambahKurangMatriks(mat,M1,M2);

    gotoxy(52,7+2*m);writeln('Hasil A - B = ');
    cetakmatriks(mat,m,n,6+2*m);
  end

  else if menu = 3 then
  begin
    repeat
    clrscr;
    writeln('==Matriks A==');
    write('Masukkan jumlah baris : ');readln(a1);
    write('Masukkan jumlah kolom : ');readln(b1);
    writeln('==Matriks B==');
    write('Masukkan jumlah baris : ');readln(a2);
    write('Masukkan jumlah kolom : ');readln(b2);
    writeln;
    if b1<>a2 then
    begin
      textcolor(12);writeln('Matriks tidak dapat dikalikan');
      writeln;
      delay(500);write('Ingat! dua buah matriks dapat dikalikan jika jumlah kolom ');
      writeln('matriks pertama sama dengan jumlah baris matriks kedua');
      writeln;
      delay(500);textcolor(5);writeln('Tekan enter untuk input ulang');
      readln;
    end;
    until a2=b1;

    //matriks A
    writeln('Masukkan entri-entri matriks A :');
    InputMatriks(M1,a1,b1);
    writeln;
    //matriks B
    writeln('Masukkan entri-entri matriks B :');
    InputMatriks(M2,a2,b2);
    clrscr;
    judul;
    gotoxy(52,5);write('Matriks A   = ');
    CetakMatriks(M1,a1,b1,4);
    gotoxy(52,6+a1);writeln('Matriks B   =');
    CetakMatriks(M2,a2,b2,5+a1);

    PerkalianMatriks(mat,M1,M2);

    if a1 <= a2 then
    begin
      gotoxy(52,7+2*a2);writeln('Hasil A x B = ');
      cetakmatriks(mat,a1,b2,6+2*a2);
    end
    else
    begin
      writeln;
      writeln('Hasil A x B = ');
      for i := 1 to a1 do
      begin
        for j := 1 to b2 do
          write(mat[i,j]:8:2);
        writeln;
      end;
    end;
  end

  else if menu = 4 then
  begin
    write('Masukkan ordo matriks (n) : ');readln(n);
    inputmatriks(M1,n,n);
    clrscr;
    judul;
    gotoxy(52,5);write('Matriks A   = ');
    CetakMatriks(M1,n,n,4);

    gotoxy(52,6+n);write('Determinan A = ', HitungDeterminan(M1, n):0:2);
  end

  else if menu = 5 then
  begin
    write('Masukkan ordo matriks (n) : ');readln(n);
    inputmatriks(M1,n,n);
    clrscr;
    judul;
    gotoxy(52,5);write('Matriks A   = ');
    CetakMatriks(M1,n,n,4);

    for i := 1 to n do
    begin
      du := M1[i, i];
      if du = 0 then
      begin
        gotoxy(52,6+n);textcolor(12);writeln('Matriks tidak memiliki invers');
        exit;
      end;
    end;

    InversMatriks(M1,n,mat);

    gotoxy(52,6+n);write('A invers    = ');
    cetakmatriks(mat,n,n,5+n);
  end

  else if menu = 6 then
  begin
    write('Masukkan jumlah baris : ');readln(m);
    write('Masukkan jumlah kolom : ');readln(n);
    writeln;
    //matriks A
    writeln('Masukkan entri-entri matriks A :');
    InputMatriks(M1,m,n);
    //transpose
    for i := 1 to m do
      for j := 1 to n do
        M2[j,i] := M1[i,j];

    clrscr;
    judul;
    gotoxy(52,5);write('Matriks A   = ');
    CetakMatriks(M1,m,n,4);
    gotoxy(52,6+m);writeln('Transpose A   =');
    CetakMatriks(M2,n,m,5+m);
  end

  else if menu = 7 then
  begin
    write('Masukkan ordo matriks (n) : ');readln(n);
    inputmatriks(M1,n,n);
    trace := 0;
    for i := 1 to n do
      trace := trace + M1[i,i];
    clrscr;
    judul;
    gotoxy(52,5);write('Matriks A   = ');
    CetakMatriks(M1,n,n,4);
    gotoxy(52,6+n);write('Trace Matriks A = ',trace:0:2);
  end

  else if menu = 8 then
  begin
    write('Masukkan banyak variabel dari sistem persamaan linier (n) : ');readln(n);
    writeln('Masukkan entri-entri matriks augmentednya');
    inputmatriks(M1,n,n+1);

    clrscr;
    judul;
    gotoxy(52,5);write('Matriks Augmented = ');
    CetakMatriks(M1,n,n+1,5);

    eliminasigaussjordan(M1,n,n+1);

    gotoxy(52,7+n);write('Matriks Setelah Eliminasi Gauss-Jordan = ');
    cetakmatriks(M1,n,n+1,7+n);

    gotoxy(52,8+2*n);writeln('Solusi SPL:');
    for i := 1 to n do
    begin
      gotoxy(52,8+i+2*n);
      writeln('x', i, ' = ', M1[i, n+1]:8:2);
    end;
  end;
end;

procedure inikalkulatorstatistik;
var
    menu : integer;
    i,n,tot : integer;
    rata,jumlah,hasil : real;
    data,x : arr;

procedure menu_stat;
begin
  gotoxy(52,7);textbackground(7);textcolor(5);writeln('*******************************************');
  gotoxy(52,8);writeln('*           KALKULATOR STATISTIK          *');
  gotoxy(52,9);writeln('*******************************************');
  gotoxy(55,12);textbackground(7);textcolor(5);writeln('+===================================+');
  gotoxy(55,13);writeln('+===================================+');
  gotoxy(55,14);writeln('|  NO.  |        DAFTAR MENU        |');
  gotoxy(55,15);writeln('+===================================+');
  gotoxy(55,16);writeln('|   1.  |   Rata-Rata               |');
  gotoxy(55,17);writeln('|   2.  |   Quartil                 |');
  gotoxy(55,18);writeln('|   3.  |   Modus                   |');
  gotoxy(55,19);writeln('|   4.  |   Ragam                   |');
  gotoxy(55,20);writeln('|   5.  |   Standar Deviasi         |');
  gotoxy(55,21);writeln('|   6.  |   Koefisien Regresi       |');
  gotoxy(55,22);writeln('+===================================+');
  gotoxy(55,23);writeln('+===================================+');
  gotoxy(51,29);write('MASUKKAN MENU YANG INGIN DIGUNAKAN (ANGKA) : ');readln(menu);
end;

function rata_rata1(data:arr;n:integer):real;
var
  i:integer;
  jumlah :real;
begin
for i:=1 to n  do
        jumlah := jumlah + data[i];
        rata_rata1:= jumlah/n;
end;

procedure rata_rata;
var i : integer;
begin
  gotoxy(47,2); writeln('====Program Menghitung Rata-rata===');
  writeln;
  write('Masukkan jumlah bilangan : ');readln(n);
  writeln;
  writeln('Masukkan Bilangan : ');

  for i:= 1 to n do
  begin
    write('Input data ke ', i, ' : '); readln(x[i])
  end;

  hasil:=rata_rata1(x,n);
  writeln;
  writeln('Rata-rata dari data yang diinput adalah ',hasil:0:2);
  writeln;
end;


procedure kuartil;
var
   n,i,j,k,tengah,q1,q3:integer;
   a :real;
   data,angka,jumlah:array [0..100] of real;
begin
  gotoxy(47,2);writeln('===Program Menghitung Kuartil===');
  write('Masukkan jumlah data : '); readln(n);
  writeln;

  for i:=1 to n do
  begin
    write('Data ke-',i,' : ');
    readln(a);
    data[i]:=a;
  end;

  for i:=1 to n do
  for j:=i+1 to n do
  begin
    if data[i]>data[j] then
    begin
      data[0]:=data[j];
      data[j]:=data[i];
      data[i]:=data[0];
    end;
  end;

  if n mod 2 = 1 then
  begin
    tengah:=(n+1) div 2;
    if (tengah-1) mod 2 = 1 then
    begin
      q1:=(tengah+1) div 2;
      q3:=tengah+((tengah+1) div 2);
    end
    else
    begin
      q1:=(tengah div 2);
      q3:=tengah+(tengah div 2);
    end;
  end
  else
  begin
    tengah:=(n div 2);
    if tengah mod 2 = 1 then
    begin
      q1:=(tengah+1) div 2;
      q3:=tengah+((tengah+1) div 2);
    end
    else
    begin
      q1:=(tengah div 2);
      q3:=tengah+(tengah div 2);
    end;
  end;

  k:=1;
  for i:=1 to n-1 do
  begin
    if data[i]=data[i+1] then
    begin
      angka[k]:=data[i];
      jumlah[k]:=j+1;
    end
    else
    begin
      inc(k);
      j:=1;
      angka[k]:=data[i+1];
      jumlah[k]:=j;
    end;
  end;

  writeln;

  if n mod 2 = 1 then
    writeln('Nilai median : ',data[tengah]:0:2)
  else
    writeln('Nilai median : ',(data[tengah]+data[tengah+1])/2:0:2);
  if n mod 2 = 1 then
  begin
    tengah:=(n+1) div 2;
    if (tengah-1) mod 2 = 1 then
    begin
      writeln('Nilai Q1 : ',data[q1]:0:2);
      writeln('Nilai Q3 : ',data[q3]:0:2);
    end
    else
    begin
      writeln('Nilai Q1 : ',(data[q1]+data[q1+1])/2:0:2);
      writeln('Nilai Q3 : ',(data[q3]+data[q3+1])/2:0:2);
    end;
  end
  else
  begin
    tengah:=(n div 2);
    if tengah mod 2 = 1 then
    begin
      writeln('Nilai Q1 : ',data[q1]:0:2);
      writeln('Nilai Q3 :',data[q3]:0:2);
    end
    else
    begin
      writeln('Nilai Q1 : ',(data[q1]+data[q1+1])/2:0:2);
      writeln('Nilai Q3 : ',(data[q3]+data[q3+1])/2:0:2);
    end;
  end;
  readln;
end;

procedure modus;
var
   n,i,j: integer;
   ftinggi: real;
   fx: array[1..100]of integer;
   modus,x: array[1..100]of real;
begin
  gotoxy(47,2);writeln('===Program Menghitung Modus===');
  writeln;
  write ('Masukkan banyak data: '); readln (n);
  for i:=1 to n do
  begin
    write ('Data ke-',i,' : '); readln(x[i]);
    fx[i]:=1;
  end;
  for i:=1 to n-1do
    for j:=i+1 to n do
      if x[i]=x[j] then fx[i]:=fx[i]+1;

  ftinggi:=1;
  for i:=1 to n do
    if fx[i]>ftinggi then ftinggi:=fx[i];
  writeln;
  writeln ('Frekuensi tertinggi adalah: ',ftinggi:0:0);
  writeln;

  j:=0;
  for i:=1 to n do
    if fx[i]=ftinggi then
    begin
      j:= j+1;
      modus[j]:=x[i];
    end;
  writeln;

  if j=n then
  writeln('Tidak ada Modus')
  else
    if ftinggi=n div j then
  writeln('Tidak ada Modus')
  else
  begin
    write ('Banyak modusnya ',j,' buah, yaitu: ');
    for i:=1 to j do
    writeln (modus[i]:0:0);
  end;
  readln;
end;

Procedure ragam;
Var
  x: array [1..1000] of integer;
  i, n: integer;
  rata, ragam, tot, sigmasqr: real;
begin
  clrscr;
  gotoxy(47,2);writeln('===Program Menghitung Ragam===');
  writeln;
  write('Masukkan jumlah data: ');
  readln(n);

  for i:= 1 to n do
  begin
    write('Data ke- ',i,' : ');
    read(x[i]);
  end;

  tot:=0;
  for i:= 1 to n do
    tot:= tot + x[i];
  rata:= tot/n;

  sigmasqr:=0;
  for i:=1 to n do
    sigmasqr:= sigmasqr + sqr((x[i]-rata));
  ragam:=sigmasqr/n;
  writeln;
  writeln('Rata-rata      : ',rata:7:2);
  writeln('Ragam          : ',ragam:7:2);
  readln;
end;

Procedure standar_deviasi;
Var
   x: array [1..1000] of integer;
   i, n: integer;
   jum, rata, stdev, sigmasqr: real;
begin
  clrscr;
  gotoxy(47,2);writeln('===Program Menghitung Standar Deviasi===');
  writeln;
  write('Masukkan jumlah data: ');
  readln(n);

  for i:= 1 to n do
  begin
    write('Data ke- ',i,' : ');
    read(x[i]);
  end;

  jum:=0;
  for i:= 1 to n do
    jum:= jum + x[i];
  rata:= jum/n;

  sigmasqr:=0;
  for i:=1 to n do
    sigmasqr:= sigmasqr + sqr((x[i]-rata));
  stdev:= sqrt(sigmasqr/n);
  writeln;
  writeln('Rata-rata        : ',rata:7:2);
  writeln('Standar Deviasi  : ',stdev:7:2);
  readln;
end;

procedure koef_regresi;
var
   DATA : array[1..2,1..10] of integer;
   sigma : array[1..4] of integer;
   n,m,i,j : integer;
   a,b : real;
begin
  repeat
  clrscr;
  gotoxy(47,2);writeln('===Program Menghitung Koefisien Regresi===');
  writeln;
  Write('Masukkan jumlah data: ');
  readln(m);
  until (m>0) and (m<=10);
  writeln;
  For i := 1 to 2 do
  begin
    Writeln('Input Data ', chr(87+i), ' : ');
    For j := 1 to m do
    begin
      write('data ', j,' : ');readln(data[i,j]);
    end;
    writeln;
  end;
  i := 1;
  while(i <=4) do
  begin
    if (i = 4) then
    begin
      for j := 1 to m do
      begin
        sigma[i] := sigma[i] + data[1,j] + data[2,j];
      end;
    end
    else
    begin
      if(i=3) then
      begin
        sigma[i] := sigma[i] + sqr(data[1,j]);
      end
      else
      begin
        for j := 1 to m do
        begin
          sigma[i] := sigma[i] + data[i,j];
        end;
      end
    end;
    i := i + 1;
  end;
  a := ((sigma[2]*sigma[3])-(sigma[1]*sigma[4]))/((m*sigma[3]) - sqr(sigma[1]));
  b := ((m*sigma[4])-(sigma[1]*sigma[2]))/((m*sigma[3]) - sqr(sigma[1]));
  writeln;
  writeln('Nilai dari a = ',a:10:2);
  writeln('Nilai dari b = ',b:10:2);
  readln;
end;

begin
  clrscr;
  menu_stat;
  clrscr;
  if menu = 1 then
  begin
    rata_rata;
  end

  else if menu = 2 then
  begin
    kuartil;
  end

  else if menu = 3 then
  begin
    modus;
  end

  else if menu = 4 then
  begin
    ragam;
  end

  else if menu = 5 then
  begin
    standar_deviasi;
  end

  else if menu = 6 then
  begin
    koef_regresi;
  end;
end;

var i, pilih, jumlah_bilangan, jumlah, bilangan, angka1, angka2 : integer;
    hasil : real;
    angka : array of real;
    operasi, nama, pass : string;
    filelogin : textfile;
    login : user;
    jawab : char;

begin
  clrscr;
  welcome('Welcome to BMS Calculator');
  gotoXY(60,6); writeln('Press Enter');
  readln;
  loginulang:
  clrscr;
  assign (filelogin, 'datalogin.txt'); // menentukan nama file input
  reset(filelogin); // membuka file untuk dibaca
  gotoxy(56,5);writeln('=====SILAHKAN LOGIN=====');
  gotoxy(58,8);writeln('=Masukkan Username=');
  gotoxy(61,9);readln(nama);
  gotoxy(58,11);writeln('=Masukkan password=');
  gotoxy(61,12);readln(pass);
  clrscr;
  while not eof(filelogin) do
  begin
    readln(filelogin,login.nama); readln(filelogin,login.pass); // membaca daftar login dari file
    if (login.pass = pass) and (login.nama = nama) then // jika username dan password benar
    begin
      writeln;
      gotoxy(55,17);writeln('Login berhasil!');
      gotoxy(46,18);writeln('Selamat datang, ', login.nama, '!');
      gotoxy(50,19);writeln('Tekan Enter untuk lanjut');
      readln;
      break;
    end

    else if eof(filelogin) then // jika sudah mencapai akhir file
    begin
      gotoxy(50,17);writeln('Username atau password salah!');
      gotoxy(50,18);writeln('Tekan Enter untuk login ulang');
      readln;
      goto loginulang;
    end;
  end;
  close(filelogin); // menutup file
  repeat
  repeat
  clrscr;
  menu('1. Kalkulator Basic');
  writeln;
  menu('2. Kalkulator Matriks');
  writeln;
  menu('3. Kalkulator Statistik');
  writeln;
  write('Pilih kalkulator : '); readln(pilih);
  clrscr;
  if pilih = 1 then
  begin
    inikalkulatorbasic;
  end
  else if pilih = 2 then
  begin
    inikalkulatormatriks;
  end

  else if pilih = 3 then
  begin
    inikalkulatorstatistik;
  end

  else
  begin
    gotoxy(60,10);textcolor(9);writeln('INPUTAN TIDAK VALID');
    gotoxy(63,11);textcolor(12);delay(500);writeln('TEKAN ENTER');
    readln;
  end;
  until (pilih>0) and (pilih<4);

  readln;
  repeat
  clrscr;
  gotoxy(55,10);textcolor(9);writeln('TEKAN Y UNTUK MENGGUNAKAN KALKULATOR BMS LAGI');
  gotoxy(66,11);textcolor(12);writeln('TEKAN T UNTUK KELUAR');
  gotoxy(76,12);textcolor(0);readln(jawab);
  until jawab in ['Y','y','T','t'];
  until (jawab = 'T') or (jawab = 't');
end.
