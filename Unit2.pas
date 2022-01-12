unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtDlgs, DB, ADODB, StdCtrls, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Button1: TButton;
    Edit5: TEdit;
    ComboBox2: TComboBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    Button6: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
   Stream : TMemoryStream;
   Jpeg : TJPEGImage;
implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Stream := TMemoryStream.Create;
Image1.Picture.Graphic.SaveToStream(stream);
Stream.Position := 0;
ADOQuery1.Append;
ADOQuery1.FieldByName('Nama Lengkap').AsString := Edit1.Text;
ADOQuery1.FieldByName('TTL').AsString := Edit2.Text;
ADOQuery1.FieldByName('Alamat').AsString := Memo1.Text;
ADOQuery1.FieldByName('Jenis Kelamin').AsString := ComboBox1.Text;
ADOQuery1.FieldByName('Jenis Member').AsString := ComboBox2.Text;
ADOQuery1.FieldByName('Email').AsString := Edit3.Text;
ADOQuery1.FieldByName('No Telp').AsString := Edit4.Text;
TBlobField(ADOQuery1.FieldByName('Foto')).LoadFromStream(stream);
Stream.Free;
ADOQuery1.Post;

ShowMessage('Data Anda Telah Ditambahkan');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Stream := TMemoryStream.Create;
Image1.Picture.Graphic.SaveToStream(stream);
Stream.Position := 0;
ADOQuery1.Edit;
ADOQuery1.FieldByName('Nama Lengkap').AsString := Edit1.Text;
ADOQuery1.FieldByName('TTL').AsString := Edit2.Text;
ADOQuery1.FieldByName('Alamat').AsString := Memo1.Text;
ADOQuery1.FieldByName('Jenis Kelamin').AsString := ComboBox1.Text;
ADOQuery1.FieldByName('Jenis Member').AsString := ComboBox2.Text;
ADOQuery1.FieldByName('Email').AsString := Edit3.Text;
ADOQuery1.FieldByName('No Telp').AsString := Edit4.Text;
TBlobField(ADOQuery1.FieldByName('Foto')).LoadFromStream(stream);
Stream.Free;
ADOQuery1.Post;

ShowMessage('Data Anda Telah Diedit');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Menghapus Data?,','Peringatan!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
ADOQuery1.Delete;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Keluar?','Peringatan!',MB_YESNO or MB_ICONQUESTION)=idyes)
then
Form2.Hide;
Form1.Show;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
begin
Edit5.Text := OpenPictureDialog1.FileName;
Image1.Picture.LoadFromFile(Edit5.Text);
end;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
Jpeg := TJPEGImage.Create;
Stream := TMemoryStream.Create;
TBlobField(ADOQuery1.FieldByName('Foto')).SaveToStream(stream);
Stream.Position := 0;
Jpeg.LoadFromStream(stream);
Image1.Picture.Graphic := Jpeg;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
QuickReport4.preview
end;

end.
