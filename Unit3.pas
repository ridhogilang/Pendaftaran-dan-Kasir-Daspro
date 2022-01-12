unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, ExtDlgs, DB, ADODB;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a, b : String;
implementation

uses Unit1, Unit2, Unit5;

{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin ingin Keluar ?','Peringatan!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
Form3.Hide;
Form1.Show;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
 a := (Edit1.Text);
 b := (Edit2.Text);
 if (a = 'kasir1') and (b = 'kasir1') or (a = 'kasir2') and (b = 'kasir2')
 then
 begin
 Edit1.Clear;
 Edit2.Clear;
 Form3.Hide;
 Form5.Show;
ShowMessage('Selamat Datang dan Selamat Bertugas');
end
else if Edit1.Text = '' then ShowMessage('Username anda masih kosong')
else if Edit2.Text = '' then ShowMessage('PIN anda masih kosong')
else
MessageBox(handle,'Username atau PIN anda salah','Eror',MB_ICONERROR)
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked
then begin
Edit2.PasswordChar := #0;
end else
begin
Edit2.PasswordChar := '*';
end;
end;

end.
