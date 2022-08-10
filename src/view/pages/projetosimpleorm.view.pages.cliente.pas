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
  projetosimpleorm.view.utils.impl.resourceimage,
  projetosimpleorm.controller.interfaces;

type
  TPageCliente = class(TForm)
    pnlContainer: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    btnSair: TSpeedButton;
    Panel3: TPanel;
    Image2: TImage;
    btnSalvar: TSpeedButton;
    Panel4: TPanel;
    Image3: TImage;
    btnExcluir: TSpeedButton;
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
    ListViewEndereco: TListView;
    procedure btnSairClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAdicionarEnderecoClick(Sender: TObject);
  private
    FController: iController;
    FDataSet : TClientDataSet;

    procedure TabelaTemporaria;
    procedure AdicionarProdutoLista;
  public

  end;

var
  PageCliente: TPageCliente;

implementation

uses
  projetosimpleorm.controller.impl.controller;

{$R *.dfm}

procedure TPageCliente.btnSalvarClick(Sender: TObject);
var
  lFoto: TMemoryStream;
  lId : Integer;
begin
  try
    lFoto := TMemoryStream.Create;
    try
      imgFoto.Picture.SaveToStream(lFoto);
      lId := FController.Pessoa
                  .Nome(edtNome.Text)
                  .DataNascReg(StrToDate(edtdataNascimento.Text))
                  .Build.Inserir.This.Id;

      FController.Cliente
          .IdPessoa(lId)
          .Tipo(edtTipo.Text)
          .CpfCnpj(edtCpfCnpj.Text)
          .Email(edtEmail.Text)
          .Telefone(edtTelefone.Text)
          .Foto(lFoto)
          .Build.Inserir;

      FDataSet.First;
      while not FDataSet.Eof do
      begin
        FController.Endereco
          .IdPessoa(lId)
          .Logradouro(FDataSet.fields[0].AsString)
          .Tipo(FDataSet.fields[6].AsString)
          .Numero(FDataSet.fields[1].AsString)
          .Complemento(FDataSet.fields[2].AsString)
          .Bairro(FDataSet.fields[3].AsString)
          .Cidade(FDataSet.fields[4].AsString)
          .Estado(FDataSet.fields[5].AsString)
          .Build.Inserir;
        FDataSet.Next;
      end;
      ShowMessage('Cliente cadastrado com sucesso');
    finally
      lFoto.DisposeOf;
    end;
  except
    raise Exception.Create('Não foi possivel cadastrar o cliente');
  end;
end;

procedure TPageCliente.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  TResourceImage.New.resourceimage(imgFoto, 'noimage');
  TabelaTemporaria;
end;

procedure TPageCliente.AdicionarProdutoLista;
var
  lList: TListItem;
begin
  lList := ListViewEndereco.Items.Add;
  lList.Caption := edtTipoEndereco.Text;
  lList.SubItems.Add(edtLogradouro.Text);
  lList.SubItems.Add(edtNumero.Text);
  lList.SubItems.Add(edtComplemento.Text);
end;

procedure TPageCliente.btnAdicionarEnderecoClick(Sender: TObject);
begin
  FDataSet.Append;
  FDataSet.fields[0].AsString := edtLogradouro.Text;
  FDataSet.fields[6].AsString := edtTipoEndereco.Text;
  FDataSet.fields[1].AsString := edtNumero.Text;
  FDataSet.fields[2].AsString := edtComplemento.Text;
  FDataSet.fields[3].AsString := edtBairro.Text;
  FDataSet.fields[4].AsString := edtCidade.Text;
  FDataSet.fields[5].AsString := edtEstado.Text;
  FDataSet.Post;
  AdicionarProdutoLista;
end;

procedure TPageCliente.btnSairClick(Sender: TObject);
begin
  close;
  FDataSet.DisposeOf;
end;

procedure TPageCliente.SpeedButton4Click(Sender: TObject);
begin
  if OD.Execute then
    imgFoto.Picture.LoadFromFile(OD.FileName);
end;

procedure TPageCliente.TabelaTemporaria;
begin
  FDataSet := TClientDataSet.Create(nil);
  FDataSet.Close;
  FDataSet.FieldDefs.Add('logradouro', ftString, 100);
  FDataSet.FieldDefs.Add('numero', ftString, 100);
  FDataSet.FieldDefs.Add('complemento', ftString, 100);
  FDataSet.FieldDefs.Add('bairro', ftString, 100);
  FDataSet.FieldDefs.Add('cidade', ftString, 100);
  FDataSet.FieldDefs.Add('estado', ftString, 100);
  FDataSet.FieldDefs.Add('tipo', ftString, 100);
  FDataSet.CreateDataSet;
end;

end.
