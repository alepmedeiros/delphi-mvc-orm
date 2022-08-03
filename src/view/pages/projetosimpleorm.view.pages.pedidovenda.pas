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
  projetosimpleorm.view.pages.cliente,
  projetosimpleorm.model.entity.cliente,
  projetosimpleorm.view.pages.produto,
  projetosimpleorm.controller.interfaces,
  projetosimpleorm.controller,
  projetosimpleorm.view.pages.configuracoes,
  projetosimpleorm.view.utils.interfaces,
  projetosimpleorm.view.utils.impl.forms;

type
  TPagePedidoVenda = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    gridItensPedido: TDBGrid;
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
    DsPedidoItens: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnListar_ListarTodosClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FController: iController;
    FForms: iForm;

    procedure FixarTamanhoForm;
    procedure FicarColumnsGrid;

    procedure ChamaForm(Key: String; Form: TComponentClass);
  public

  end;

var
  PagePedidoVenda: TPagePedidoVenda;

implementation

{$R *.dfm}

procedure TPagePedidoVenda.FormCreate(Sender: TObject);
begin
  FixarTamanhoForm;
  FicarColumnsGrid;

  FController := TController.New;
  FForms := TForms.New;
end;

procedure TPagePedidoVenda.SpeedButton1Click(Sender: TObject);
begin
  ChamaForm('Produto', TPageProduto);
end;

procedure TPagePedidoVenda.SpeedButton2Click(Sender: TObject);
begin
  ChamaForm('Cliente', TPageCliente);
end;

procedure TPagePedidoVenda.SpeedButton3Click(Sender: TObject);
begin
  SplitView1.Opened := not SplitView1.Opened;
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

procedure TPagePedidoVenda.btnListar_ListarTodosClick(Sender: TObject);
begin
  FController.Pedido.Build.ListarPorId(StrToInt(edtNumeroPedido.Text))
    .DataSource(DsPedidoItens)
end;

procedure TPagePedidoVenda.ChamaForm(Key: String; Form: TComponentClass);
begin
  FForms
    .Key(Key)
    .ComponentClass(Form)
    .Parent(pnlEmb)
    .FormAction.Add;
end;

procedure TPagePedidoVenda.FicarColumnsGrid;
begin
  gridItensPedido.Columns[0].Width := pnlTitleCodigo.Width;
  gridItensPedido.Columns[1].Width := pnlTitleDescricao.Width;
  gridItensPedido.Columns[2].Width := pnlTitleQuantidade.Width + 1;
  gridItensPedido.Columns[3].Width := pnlTitleValorUnitario.Width + 1;
  gridItensPedido.Columns[4].Width := pnlTitleValorTotal.Width - 15;
end;

end.
