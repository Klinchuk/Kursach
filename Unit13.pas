unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.MPlayer, Vcl.Imaging.jpeg;

type
  TForm13 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label4: TLabel;
    MediaPlayer1: TMediaPlayer;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Timer1: TTimer;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RadioGroup2: TRadioGroup;
    Image1: TImage;
    Label2: TLabel;
    procedure N1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
f: text;
s: string;
Nvern, ball: integer;
  i:integer;
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit11;





procedure TForm13.N1Click(Sender: TObject);
begin
Form11.show;
Form13.hide;
timer1.Enabled:=false;
end;

procedure TForm13.N3Click(Sender: TObject);
begin
Mediaplayer1.FileName:=('sounds/pause4.mp3');
Mediaplayer1.Open;
Mediaplayer1.Play;
end;

procedure TForm13.N4Click(Sender: TObject);
begin
Mediaplayer1.stop;
end;

procedure TForm13.RadioGroup1Click(Sender: TObject);
var sss:integer;
begin
sss:=0;
i:=60;
Label6.Caption := inttostr(sss);
Label7.Caption := inttostr(sss);
RadioGroup2.Items.Clear;
//RadioGroup1.Enabled:=false; //Выбор варианта становится недоступен
RadioGroup2.Enabled:=true; //Доступным становится поле с вопросом
Image1.Enabled:=true; //Кнопка Далее
case RadioGroup1.ItemIndex of //В зависимости от выбранного варианта переменная f
0: AssignFile( f ,'ОАиП/Легкий.txt');//связывается с разными файлами
1: AssignFile( f ,'ОАиП/Средний.txt');
2: AssignFile( f ,'ОАиП/Сложный.txt');
end;
reset(f); //Открываем файл для чтения
readln(f,s); //Считываем первую строку из файла
ball:=0; //изначально количество баллов 0
repeat
if (s[1]='-') then begin //Если первый символ строки ‘-‘ значит это вопрос
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin //Если перв символ ‘*’ значит это номер верного ответа
delete(s,1,1);
Nvern:=StrToInt(s);
end

else RadioGroup2.Items.Add(s); //Иначе это вариант ответа
readln(f,s); //Считываем следующую строку из файла
until (s[1]='-') or (Eof(f)); //Считывание и отправление вариантов ответов в RadiGroup до тех пор

// пока не достигнут следующий вопрос или конец файла

end;


procedure TForm13.FormActivate(Sender: TObject);
begin
Timer1.Enabled := True; // запуск таймера при попадании на форму
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
i:=60;
end;

procedure TForm13.Image1Click(Sender: TObject);
begin
//Если выбран вариант ответа и не достигнут конец файла
  if (RadioGroup2.ItemIndex>-1) and (not Eof(f)) then begin
    if RadioGroup2.ItemIndex = Nvern-1 then begin
      Label6.Caption := IntToStr(StrToInt(Label6.Caption) + 1);
    end else begin
      Label7.Caption := IntToStr(StrToInt(Label7.Caption) + 1);
    end;
    //Если выбранный вариант соответствует номеру верного ответа то балл прибавляется
    RadioGroup2.Items.Clear; //и очищается поле для следующего вопроса
    Repeat //читаем строки файла пока не дойдем до следующего вопроса или конца файла
      if (s[1]='-') then begin
        delete(s,1,1);
        RadioGroup2.Caption:=s;
      end else if s[1]='*' then begin
        delete(s,1,1);
        Nvern:=StrToInt(s);
      end else RadioGroup2.Items.Add(s);
      readln(f,s);
    until (s[1]='-') or (Eof(f));
  end else if Eof(f) then begin //Если конец файла достигнут, значит вопросы закончились
    delete(s,1,1);
    Nvern:=StrToInt(s);
    if RadioGroup2.ItemIndex = Nvern-1 then begin
      Label6.Caption := IntToStr(StrToInt(Label6.Caption) + 1);
    end else begin
      Label7.Caption := IntToStr(StrToInt(Label7.Caption) + 1);
    end;
    CloseFile(f);
    Image1.Enabled:=False; //кнопка становится недоступной в завершении проекта
  end;
  i:=60;
end;

procedure TForm13.Timer1Timer(Sender: TObject);
var
H,M,S:byte;
begin
 i:=i-1;
 S:= i mod 60;
 M:= i div 60 mod 60;
 H:=i div 3600;
 Label5.Caption:= Format('%.2d:',[h])+   Format('%.2d:',[m])+Format('%.2d:',[s]);
 if i=0 then
 begin
   showmessage('Извините, время на ответ истекло ');
   close;
 end;

end;

end.
