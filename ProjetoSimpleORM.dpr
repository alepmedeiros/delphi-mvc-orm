program ProjetoSimpleORM;

{$R *.dres}

uses
  Vcl.Forms,
  projetosimpleorm.view.pages.pedidovenda in 'src\projetosimpleorm.view.pages.pedidovenda.pas' {PagePedidoVenda},
  projetosimpleorm.view.pages.cliente in 'src\projetosimpleorm.view.pages.cliente.pas' {PageCliente},
  projetosimpleorm.view.pages.configuracoes in 'src\projetosimpleorm.view.pages.configuracoes.pas' {PageConfiguracoes},
  projetosimpleorm.view.pages.produto in 'src\projetosimpleorm.view.pages.produto.pas' {PageProduto},
  projetosimpleorm.view.utils.interfaces in 'src\utils\projetosimpleorm.view.utils.interfaces.pas',
  projetosimpleorm.view.utils.impl.forms in 'src\utils\impl\projetosimpleorm.view.utils.impl.forms.pas',
  projetosimpleorm.view.utils.impl.gerenciadorforms in 'src\utils\impl\projetosimpleorm.view.utils.impl.gerenciadorforms.pas',
  projetosimpleorm.view.utils.impl.resourceimage in 'src\utils\impl\projetosimpleorm.view.utils.impl.resourceimage.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPagePedidoVenda, PagePedidoVenda);
  Application.CreateForm(TPageCliente, PageCliente);
  Application.CreateForm(TPageConfiguracoes, PageConfiguracoes);
  Application.CreateForm(TPageProduto, PageProduto);
  Application.Run;
end.
