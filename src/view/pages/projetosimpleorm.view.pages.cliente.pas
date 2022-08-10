unit projetosimpleorm.view.pages.cliente;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.jpeg,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Datasnap.DBClient,
  Vcl.ComCtrls,
  Vcl.Imaging.pngimage,
  projetosimpleorm.view.utils.impl.resourceimage;

type
  TPageCliente = class(TForm)
    pnlContainer: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    Panel12: TPanel;
    Panel13: TPanel;
    Shape8: TShape;
    imgFoto: TImage;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Panel8: TPanel;
    Shape5: TShape;
    edtTipo: TEdit;
    Panel9: TPanel;
    Shape2: TShape;
    edtCodigo: TEdit;
    Label2: TLabel;
    Panel7: TPanel;
    Shape1: TShape;
    edtNome: TEdit;
    Label3: TLabel;
    Panel10: TPanel;
    Shape3: TShape;
    edtdataNascimento: TEdit;
    Label4: TLabel;
    Panel11: TPanel;
    Shape4: TShape;
    edtCpfCnpj: TEdit;
    Label6: TLabel;
    Panel14: TPanel;
    Shape6: TShape;
    edtEmail: TEdit;
    Label7: TLabel;
    Panel15: TPanel;
    Shape7: TShape;
    edtTelefone: TEdit;
    Panel16: TPanel;
    Panel17: TPanel;
    Label8: TLabel;
    Panel18: TPanel;
    Shape9: TShape;
    edtLogradouro: TEdit;
    Label9: TLabel;
    Panel19: TPanel;
    Shape10: TShape;
    edtNumero: TEdit;
    Label10: TLabel;
    Panel20: TPanel;
    Shape11: TShape;
    edtComplemento: TEdit;
    Label11: TLabel;
    Panel21: TPanel;
    Shape12: TShape;
    edtTipoEndereco: TEdit;
    Label12: TLabel;
    Panel22: TPanel;
    Shape13: TShape;
    edtBairro: TEdit;
    Label13: TLabel;
    Panel23: TPanel;
    Shape14: TShape;
    edtCidade: TEdit;
    Label14: TLabel;
    Panel24: TPanel;
    Shape15: TShape;
    edtEstado: TEdit;
    Panel25: TPanel;
    Shape16: TShape;
    btnAdicionarEndereco: TSpeedButton;
    SpeedButton4: TSpeedButton;
    OD: TOpenDialog;
    Panel26: TPanel;
    Shape17: TShape;
    ListViewProdutos: TListView;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    
  public

  end;

var
  PageCliente: TPageCliente;

implementation

{$R *.dfm}

procedure TPageCliente.FormCreate(Sender: TObject);
begin
  TResourceImage.New.ResourceImage(imgFoto,'noimage');
end;

procedure TPageCliente.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TPageCliente.SpeedButton4Click(Sender: TObject);
begin
  if OD.Execute then
    imgFoto.Picture.LoadFromFile(OD.FileName);
end;

end.
