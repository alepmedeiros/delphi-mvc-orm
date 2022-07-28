unit projetosimpleorm.view.pages.pedidovenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPagePedidoVenda = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel5: TPanel;
    Shape1: TShape;
    edtCodigoProduto: TEdit;
    Panel6: TPanel;
    Shape2: TShape;
    edtQuantidade: TEdit;
    Panel7: TPanel;
    Shape3: TShape;
    edtValorUnitario: TEdit;
    Panel8: TPanel;
    Shape4: TShape;
    btnConfirmar: TSpeedButton;
    Panel11: TPanel;
    Shape7: TShape;
    edtCodigoCliente: TEdit;
    Panel12: TPanel;
    Shape8: TShape;
    edtNomeCliente: TEdit;
    Panel2: TPanel;
    gridItensPedido: TDBGrid;
    Panel3: TPanel;
    Panel9: TPanel;
    Shape5: TShape;
    Label8: TLabel;
    lblValorTotal: TLabel;
    Panel10: TPanel;
    Shape6: TShape;
    btnFinalizarPedido: TSpeedButton;
    pnlButtonCancelar: TPanel;
    Shape9: TShape;
    btnCancelarpedido: TSpeedButton;
    Panel13: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Panel14: TPanel;
    Shape11: TShape;
    edtNumeroPedido: TEdit;
    Panel15: TPanel;
    Shape12: TShape;
    btnListar_ListarTodos: TSpeedButton;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PagePedidoVenda: TPagePedidoVenda;

implementation

{$R *.dfm}

end.
