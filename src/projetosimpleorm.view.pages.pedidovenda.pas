unit projetosimpleorm.view.pages.pedidovenda;

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
  Data.DB,
  Datasnap.DBClient,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.WinXCtrls,
  Vcl.ComCtrls,
  projetosimpleorm.view.pages.cliente,
  projetosimpleorm.view.pages.produto,
  projetosimpleorm.view.pages.configuracoes,
  projetosimpleorm.view.utils.interfaces,
  projetosimpleorm.view.utils.impl.forms;

type
  TPagePedidoVenda = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel13: TPanel;
    Panel16: TPanel;
    pnlTitleDescricao: TPanel;
    pnlTitleCodigo: TPanel;
    pnlTitleQuantidade: TPanel;
    pnlTitleValorUnitario: TPanel;
    pnlTitleValorTotal: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel22: TPanel;
    Label9: TLabel;
    Panel14: TPanel;
    Shape11: TShape;
    edtNumeroPedido: TEdit;
    Panel15: TPanel;
    Shape12: TShape;
    btnListar_ListarTodos: TSpeedButton;
    Panel23: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Panel5: TPanel;
    Label13: TLabel;
    Label10: TLabel;
    Panel6: TPanel;
    Shape1: TShape;
    edtCodigoProduto: TEdit;
    Label11: TLabel;
    Label14: TLabel;
    Panel12: TPanel;
    Shape8: TShape;
    edtNomeCliente: TEdit;
    Panel7: TPanel;
    Shape2: TShape;
    edtQuantidade: TEdit;
    Label12: TLabel;
    Panel11: TPanel;
    Shape3: TShape;
    edtValorUnitario: TEdit;
    Panel24: TPanel;
    Shape7: TShape;
    edtCodigoCliente: TEdit;
    Panel8: TPanel;
    Panel25: TPanel;
    Shape4: TShape;
    btnConfirmar: TSpeedButton;
    Panel26: TPanel;
    pnlButtonCancelar: TPanel;
    Shape9: TShape;
    btnCancelarpedido: TSpeedButton;
    Panel10: TPanel;
    Shape6: TShape;
    btnFinalizarPedido: TSpeedButton;
    Panel9: TPanel;
    Panel27: TPanel;
    Shape5: TShape;
    Label8: TLabel;
    lblValorTotal: TLabel;
    Panel17: TPanel;
    pnlContainer: TPanel;
    Panel18: TPanel;
    Image1: TImage;
    SpeedButton3: TSpeedButton;
    Panel28: TPanel;
    Image2: TImage;
    SpeedButton5: TSpeedButton;
    SplitView1: TSplitView;
    pnlMenu: TPanel;
    Panel19: TPanel;
    SpeedButton1: TSpeedButton;
    Panel20: TPanel;
    SpeedButton2: TSpeedButton;
    Panel21: TPanel;
    SpeedButton4: TSpeedButton;
    pnlback: TPanel;
    pnlEmb: TPanel;
    ListPedidoProduto: TListView;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarpedidoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FForms: iForm;
    FDataSource : TDataSource;

    procedure FixarTamanhoForm;
    procedure PreencheList;
    procedure SplitViewAction(Value: TSplitView);

    procedure ChamaForm(Key: String; Form: TComponentClass);
  public

  end;

var
  PagePedidoVenda: TPagePedidoVenda;

implementation

{$R *.dfm}

procedure TPagePedidoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDataSource.DisposeOf;
end;

procedure TPagePedidoVenda.FormCreate(Sender: TObject);
begin
  FixarTamanhoForm;
  FDataSource := TDataSource.Create(nil);

  FForms := TForms.New;
end;

procedure TPagePedidoVenda.SplitViewAction(Value: TSplitView);
begin
  Value.Opened := not Value.Opened;
end;

procedure TPagePedidoVenda.PreencheList;
var
  ListItem: TListItem;
begin
  ListItem := ListPedidoProduto.Items.Add;
  ListItem.Caption := edtCodigoProduto.Text;
  ListItem.SubItems.Add(FDataSource.DataSet.FieldByName('Descricao').AsString);
  ListItem.SubItems.Add(edtQuantidade.Text);
  ListItem.SubItems.Add(edtValorUnitario.Text);
  ListItem.SubItems.Add(FormatFloat('#,##0.00',(FDataSource.DataSet.FieldByName('precovenda').AsCurrency*
    (StrToInt(edtQuantidade.Text)))));
end;

procedure TPagePedidoVenda.SpeedButton1Click(Sender: TObject);
begin
  ChamaForm('Produto', TPageProduto);
  SplitViewAction(SplitView1);
end;

procedure TPagePedidoVenda.SpeedButton2Click(Sender: TObject);
begin
  ChamaForm('Cliente', TPageCliente);
  SplitViewAction(SplitView1);
end;

procedure TPagePedidoVenda.SpeedButton3Click(Sender: TObject);
begin
  SplitViewAction(SplitView1);
end;

procedure TPagePedidoVenda.SpeedButton4Click(Sender: TObject);
begin
  self.Close;
end;

procedure TPagePedidoVenda.SpeedButton5Click(Sender: TObject);
begin
  ChamaForm('Configuracoes', TPageConfiguracoes);
end;

procedure TPagePedidoVenda.FixarTamanhoForm;
begin
  self.WindowState := wsNormal;
  self.Position := poScreenCenter;
  self.Constraints.MaxHeight := self.ClientHeight;
  self.Constraints.MinHeight := self.ClientHeight;
  self.Constraints.MaxWidth := self.ClientWidth;
  self.Constraints.MinWidth := self.ClientWidth;
end;

procedure TPagePedidoVenda.btnCancelarpedidoClick(Sender: TObject);
begin
  ListPedidoProduto.Items.Clear;
end;

procedure TPagePedidoVenda.btnConfirmarClick(Sender: TObject);
begin
  if ((not (edtCodigoCliente.Text <> '')) or
      (not (edtNomeCliente.Text <> ''))) then
  begin
    ShowMessage('Favor informar o cliente');
    exit;
  end;
  PreencheList;
end;

procedure TPagePedidoVenda.ChamaForm(Key: String; Form: TComponentClass);
begin
  FForms
    .Key(Key)
    .ComponentClass(Form)
    .Parent(pnlEmb)
    .FormAction.Add;
end;

end.
