unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Form1.Hide;
Form2.Show;

ShowMessage('Silahkan isi data diri member baru');
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Form1.Hide;
Form3.Show;

ShowMessage('Silahkan masukkan username dan PIN anda');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Keluar?','Konfirmasi!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
Application.Terminate;
end;

end.
