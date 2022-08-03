unit projetosimpleorm.view.pages.index;

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
  Router4D, projetosimpleorm.view.pages.pedidovenda,
  projetosimpleorm.view.pages.cliente, projetosimpleorm.view.pages.produto;

type
  TPageIndex = class(TForm)
    pnlContainer: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure FixarTamanhoForm;
    procedure RegistraRotas;
  end;

var
  PageIndex: TPageIndex;

implementation

{$R *.dfm}
{ TForm1 }

procedure TPageIndex.FixarTamanhoForm;
begin
  Self.WindowState := wsNormal;
  Self.Position := poScreenCenter;
  Self.Constraints.MaxHeight := Self.ClientHeight;
  Self.Constraints.MinHeight := Self.ClientHeight;
  Self.Constraints.MaxWidth := Self.ClientWidth;
  Self.Constraints.MinWidth := Self.ClientWidth;
end;

procedure TPageIndex.FormCreate(Sender: TObject);
begin
  RegistraRotas;
  TRouter4D.Render<TPageIndex>.SetElement(pnlContainer, pnlContainer);
end;

procedure TPageIndex.RegistraRotas;
begin
  TRouter4D.Switch.Router('Inicio', TPageIndex);
  TRouter4D.Switch.Router('Pedido', TPagePedidoVenda);
  TRouter4D.Switch.Router('Cliente', TPageCliente);
  TRouter4D.Switch.Router('Produto', TPageProduto);
end;

end.
