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
  projetosimpleorm.controller.interfaces,
  projetosimpleorm.controller, Datasnap.DBClient, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, projetosimpleorm.view.utils.impl.resourceimage;

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
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarEnderecoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FController: iController;
    FDataSet: TClientDataSet;

    procedure TabelaTemporaria;
    procedure AddProdutoList;
  public

  end;

var
  PageCliente: TPageCliente;

implementation

{$R *.dfm}

procedure TPageCliente.AddProdutoList;
var
  lList: TListItem;
begin
  lList := ListViewProdutos.Items.Add;
  lList.Caption := edtTipoEndereco.Text;
  lList.SubItems.Add(edtLogradouro.Text);
  lList.SubItems.Add(edtNumero.Text);
  lList.SubItems.Add(edtComplemento.Text);
end;

procedure TPageCliente.btnAdicionarEnderecoClick(Sender: TObject);
begin
  FDataSet.Append;
  FDataSet.Fields[0].AsString := edtLogradouro.Text;
  FDataSet.Fields[6].AsString := edtTipoEndereco.Text;
  FDataSet.Fields[1].AsString := edtNumero.Text;
  FDataSet.Fields[2].AsString := edtComplemento.Text;
  FDataSet.Fields[3].AsString := edtBairro.Text;
  FDataSet.Fields[4].AsString := edtCidade.Text;
  FDataSet.Fields[5].AsString := edtEstado.Text;
  FDataSet.Post;
  AddProdutoList;
end;

procedure TPageCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDataSet.DisposeOf;
end;

procedure TPageCliente.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  TabelaTemporaria;
  TResourceImage.New.ResourceImage(imgFoto,'noimage');
end;

procedure TPageCliente.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TPageCliente.SpeedButton2Click(Sender: TObject);
var
  lImg: TMemoryStream;
  lId: Integer;
begin
  try
    lImg := TMemoryStream.Create;
    try
      imgFoto.Picture.SaveToStream(lImg);
      lId :=
      FController
              .Pessoa
                .Nome(edtNome.Text)
                .DataNascReg(StrToDate(edtdataNascimento.Text))
                .Build.Inserir.This.Id;

      FController
        .Cliente
          .IdPessoa(lId)
          .Tipo(edtTipo.Text)
          .CpfCnpj(edtCpfCnpj.Text)
          .Email(edtEmail.Text)
          .Telefone(edtTelefone.Text)
          .Foto(lImg)
          .Build.Inserir;

        FDataSet.First;
        while not FDataSet.Eof do
        begin
          FController
            .Endereco
            .IdPessoa(lId)
            .Logradouro(FDataSet.Fields[0].AsString)
            .Tipo(FDataSet.Fields[6].AsString)
            .Numero(FDataSet.Fields[1].AsString)
            .Complemento(FDataSet.Fields[2].AsString)
            .Bairro(FDataSet.Fields[3].AsString)
            .Cidade(FDataSet.Fields[4].AsString)
            .Estado(FDataSet.Fields[5].AsString)
            .Build.Inserir;
          FDataSet.Next;
        end;
        ShowMessage('Cliente cadastrado com sucesso!');
    finally
      lImg.DisposeOf;
    end;
  except
    raise Exception.Create('Não foi possivel registrar o cliente');
  end;
end;

procedure TPageCliente.SpeedButton4Click(Sender: TObject);
begin
  if OD.Execute then
    imgFoto.Picture.LoadFromFile(OD.FileName);
end;

procedure TPageCliente.TabelaTemporaria;
begin
  FDataSet:= TClientDataSet.Create(nil);
  FDataSet.Close;
  FDataSet.FieldDefs.Clear;
  FDataSet.FieldDefs.Add('logradouro', ftString,100);
  FDataSet.FieldDefs.Add('numero', ftString,100);
  FDataSet.FieldDefs.Add('complemento', ftString,100);
  FDataSet.FieldDefs.Add('bairro', ftString,100);
  FDataSet.FieldDefs.Add('cidade', ftString,100);
  FDataSet.FieldDefs.Add('estado', ftString,100);
  FDataSet.FieldDefs.Add('tipo', ftString,100);
  FDataSet.CreateDataSet;
end;

end.
