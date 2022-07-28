unit projetosimpleorm.view.pages.pedidovenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

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
    pnlMenu: TPanel;
    Panel19: TPanel;
    SpeedButton1: TSpeedButton;
    Panel20: TPanel;
    SpeedButton2: TSpeedButton;
    Panel21: TPanel;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    procedure FixarTamanhoForm;
    procedure FicarColumnsGrid;
    procedure PreparaMenu;
    procedure AcaoMenu;
  public
    { Public declarations }
  end;

var
  PagePedidoVenda: TPagePedidoVenda;

implementation

{$R *.dfm}

procedure TPagePedidoVenda.FormCreate(Sender: TObject);
begin
  FixarTamanhoForm;
  FicarColumnsGrid;
  PreparaMenu;
end;

procedure TPagePedidoVenda.SpeedButton2Click(Sender: TObject);
begin
  AcaoMenu;
end;

procedure TPagePedidoVenda.SpeedButton3Click(Sender: TObject);
begin
  AcaoMenu;
end;

procedure TPagePedidoVenda.SpeedButton4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TPagePedidoVenda.FixarTamanhoForm;
begin
  Self.WindowState := wsNormal;
  Self.Position := poScreenCenter;
  self.Constraints.MaxHeight := Self.ClientHeight;
  Self.Constraints.MinHeight := Self.ClientHeight;
  Self.Constraints.MaxWidth := Self.ClientWidth;
  Self.Constraints.MinWidth := Self.ClientWidth;
end;

procedure TPagePedidoVenda.AcaoMenu;
begin
  if pnlMenu.Width = 0 then
  begin
    pnlMenu.Width := 200;
    exit;
  end;
  pnlMenu.Width := 0;
end;

procedure TPagePedidoVenda.FicarColumnsGrid;
begin
  gridItensPedido.Columns[0].Width := pnlTitleCodigo.Width;
  gridItensPedido.Columns[1].Width := pnlTitleDescricao.Width;
  gridItensPedido.Columns[2].Width := pnlTitleQuantidade.Width+1;
  gridItensPedido.Columns[3].Width := pnlTitleValorUnitario.Width+1;
  gridItensPedido.Columns[4].Width := pnlTitleValorTotal.Width-15;
end;

procedure TPagePedidoVenda.PreparaMenu;
begin
  pnlMenu.Width := 0;
  pnlMenu.Left := 0;
  pnlMenu.Height := pnlContainer.Height;
end;

end.
