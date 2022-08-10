unit projetosimpleorm.view.pages.produto;

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
  Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  projetosimpleorm.controller.interfaces,
  projetosimpleorm.controller, projetosimpleorm.view.utils.impl.resourceimage,
  projetosimpleorm.view.utils.interfaces, Vcl.ComCtrls;

type
  TPageProduto = class(TForm)
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
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    imgFoto: TImage;
    Shape1: TShape;
    Panel8: TPanel;
    Label13: TLabel;
    Panel24: TPanel;
    Shape7: TShape;
    edtDescricao: TEdit;
    Label1: TLabel;
    Panel9: TPanel;
    Shape2: TShape;
    edtCodigo: TEdit;
    Label2: TLabel;
    Panel10: TPanel;
    Shape3: TShape;
    edtPrecoVenda: TEdit;
    SpeedButton4: TSpeedButton;
    OD: TOpenDialog;
    Panel11: TPanel;
    Image4: TImage;
    SpeedButton5: TSpeedButton;
    ListView1: TListView;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    FController: iController;
  public

  end;

var
  PageProduto: TPageProduto;

implementation

{$R *.dfm}
{ TPageProduto }

procedure TPageProduto.FormCreate(Sender: TObject);
var
  lImages: iImage;
begin
  lImages := TResourceImage.New;
  FController := TController.New;
  lImages.ResourceImage(imgFoto,'noimage');
  lImages.ResourceImage(Image1,'sair');
  lImages.ResourceImage(Image2,'salvar');
  lImages.ResourceImage(Image3,'excluir');
  lImages.ResourceImage(Image4,'lista');
end;

procedure TPageProduto.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TPageProduto.SpeedButton2Click(Sender: TObject);
var
  lFoto: TMemoryStream;
begin
  try
    lFoto := TMemoryStream.Create;
    try
      if not (imgFoto.Picture = nil) then
        imgFoto.Picture.SaveToStream(lFoto);
      FController
      .Produto
        .Descricao(edtDescricao.Text)
        .PrecoVenda(StrToFloat(edtPrecoVenda.Text))
        .Foto(lFoto)
      .Build.Inserir;
      ShowMessage('Produto cadastrado com sucesso!');
    finally
      lFoto.DisposeOf;
    end;
  except
    raise Exception.Create('Erro ao tentar cadastrar o produto');
  end;
end;

procedure TPageProduto.SpeedButton4Click(Sender: TObject);
begin
  if OD.Execute then
    imgFoto.Picture.LoadFromFile(OD.FileName);
end;

procedure TPageProduto.SpeedButton5Click(Sender: TObject);
var
  lList: TListItem;
  lDataSource: TDataSource;
begin
  lDataSource:= TDataSource.Create(nil);
  try
    FController.Produto.Build.DataSource(lDataSource).ListarTodos;
    lDataSource.DataSet.First;
    while not lDataSource.DataSet.Eof do
    begin
      lList := ListView1.Items.Add;
      lList.Caption := lDataSource.DataSet.FieldByName('id').AsString;
      lList.SubItems.Add(lDataSource.DataSet.FieldByName('descricao').AsString);
      lList.SubItems.Add(lDataSource.DataSet.FieldByName('precovenda').AsString);
      lDataSource.DataSet.Next;
    end;
  finally
    lDataSource.DisposeOf;
  end;
end;

end.
