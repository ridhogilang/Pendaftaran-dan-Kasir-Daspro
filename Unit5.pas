unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox4: TComboBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    Edit6: TEdit;
    Label10: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit3, Unit6;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
harga1, harga2, harga3 : Integer;
jumlah1, jumlah2, jumlah3 : Integer;
diskon : Real;
hdiskon, totala, totalb : Real;
begin
  if (ComboBox1.Text = 'Nasi Putih') then harga1 := 4000
    else
  if (ComboBox1.Text = 'Nasi Merah') then harga1 := 5000
    else
  if (ComboBox1.Text = 'Nasi Sayur') then harga1 := 10000;

  if (ComboBox2.Text = 'Ayam Goreng') then harga2 := 15000
    else
  if (ComboBox2.Text = 'Bebek Goreng') then harga2 := 20000
    else
  if (ComboBox2.Text = 'Pepes Nila') then harga2 := 20000
    else
  if (ComboBox2.Text = 'Pecel Lele') then harga2 := 13000
    else
  if (ComboBox2.Text = 'Garang Asem') then harga2 := 15000
    else
  if (ComboBox2.Text = 'Sop Omah nDaren') then harga2 := 12000;

  if (ComboBox3.Text = 'Teh Manis Panas/Es') then harga3 := 3000
    else
  if (ComboBox3.Text = 'Jeruk Peras Panas/Es') then harga3 := 5000
    else
  if (ComboBox3.Text = 'Oreo Crush') then harga3 := 15000
    else
  if (ComboBox3.Text = 'Flamingo') then harga3 := 13000
    else
  if (ComboBox3.Text = 'Es Campur') then harga3 := 10000;

  jumlah1 := StrToInt(Edit1.Text);
  jumlah2 := StrToInt(Edit2.Text);
  jumlah3 := StrToInt(Edit3.Text);

  if (ComboBox4.Text = 'Silver') then diskon := 0.10
    else
  if (ComboBox4.Text = 'Gold') then diskon := 0.20
    else
  if (ComboBox4.Text = 'Platinum') then diskon := 0.30
    else
  if (ComboBox4.Text = '') then diskon := 0;

  totala := (harga1*jumlah1)+(harga2*jumlah2)+(harga3*jumlah3);
  hdiskon := (diskon*totala);
  totalb := (totala-hdiskon);
  Edit4.Text := FloatToStr(totalb);

end;

procedure TForm5.Button2Click(Sender: TObject);
var
pemba,kemba : Real;
totalb : Real;
begin
  totalb := StrToFloat(Edit4.Text);
  pemba := StrToFloat(Edit5.Text);
  kemba := (pemba-totalb);
  Edit6.Text := FloatToStr(kemba);
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Keluar?','Konfirmasi!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
Form5.Hide;
Form3.Show;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
ComboBox1.Text := 'Pilih Jenis Menu';
ComboBox2.Text := 'Pilih Jenis Menu';
ComboBox3.Text := 'Pilih Jenis Menu';
ComboBox4.Text := 'Pilih Jenis Member';
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
form5.Hide;
form6.Show;
end;

end.
