unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Timer3: TTimer;
    Label8: TLabel;
    Label9: TLabel;
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit12, Unit11;

procedure TForm1.FormCreate(Sender: TObject);
begin
 progressbar1.Position:=0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
form1.hide;
form11.show;
timer1.Enabled:=false;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
progressbar1.Position:=progressbar1.Position+20;
if progressbar1.Position=100 then
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
label1.Font.Color := RGB(Random(256), Random(256), Random(256));
Label2.Font.Color := RGB(Random(256), Random(256), Random(256));
Label3.Font.Color := RGB(Random(256), Random(256), Random(256));
Label4.Font.Color := RGB(Random(256), Random(256), Random(256));
Label5.Font.Color := RGB(Random(256), Random(256), Random(256));
Label6.Font.Color := RGB(Random(256), Random(256), Random(256));
Label7.Font.Color := RGB(Random(256), Random(256), Random(256));
Label8.Font.Color := RGB(Random(256), Random(256), Random(256));
Label9.Font.Color := RGB(Random(256), Random(256), Random(256));
end;

end.
