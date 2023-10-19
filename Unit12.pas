unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm12 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    procedure N1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit11, Unit13, Unit14, Unit15, Unit16, Unit17, Unit18;

procedure TForm12.Image2Click(Sender: TObject);
begin
form13.show;
form12.hide;
end;

procedure TForm12.Image3Click(Sender: TObject);
begin
form16.show;
form12.hide;
end;

procedure TForm12.Image4Click(Sender: TObject);
begin
form17.show;
form12.hide;
end;

procedure TForm12.Image5Click(Sender: TObject);
begin
form14.show;
form12.hide;
end;

procedure TForm12.Image6Click(Sender: TObject);
begin
form18.show;
form12.hide;
end;

procedure TForm12.Image7Click(Sender: TObject);
begin
form15.show;
form12.hide;
end;

procedure TForm12.N1Click(Sender: TObject);
begin
form11.show;
form12.hide;
end;

end.
