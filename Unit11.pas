unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Menus, shellapi;

type
  TForm11 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure N3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit12;
procedure TForm11.Image2Click(Sender: TObject);
begin
Form12.show;
form11.hide;
end;

procedure TForm11.Image4Click(Sender: TObject);
begin
ShowMessage('��������� ����� ��������� ������,������� �� ����� ������� ���� � ������� ����� ������ ���������� ����� �� ���������� ����������� ������ �����������.');
end;

procedure TForm11.Image5Click(Sender: TObject);
begin
halt;
end;

procedure TForm11.N1Click(Sender: TObject);
begin
ShellExecute(0,PChar('open'),PChar('�������.chm'),nil,nil,SW_SHOW);
end;

procedure TForm11.N2Click(Sender: TObject);
begin
halt;
end;

procedure TForm11.N3Click(Sender: TObject);
begin
showmessage('����. 17 ���. �������� ���� 2 ����� ���-37. ��������� ������� ����������. ����� ������ � � ������� �������� �����!!! ');
end;

end.
