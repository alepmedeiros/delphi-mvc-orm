program ProjetoSimpleORM;

uses
  Vcl.Forms,
  projetosimpleorm.view.pages.pedidovenda in 'src\view\pages\projetosimpleorm.view.pages.pedidovenda.pas' {PagePedidoVenda},
  projetosimpleorm.model.entity.pedido in 'src\model\entity\projetosimpleorm.model.entity.pedido.pas',
  projetosimpleorm.model.entity.pedidoitens in 'src\model\entity\projetosimpleorm.model.entity.pedidoitens.pas',
  projetosimpleorm.model.entity.pessoa in 'src\model\entity\projetosimpleorm.model.entity.pessoa.pas',
  projetosimpleorm.model.entity.endereco in 'src\model\entity\projetosimpleorm.model.entity.endereco.pas',
  projetosimpleorm.model.entity.cliente in 'src\model\entity\projetosimpleorm.model.entity.cliente.pas',
  projetosimpleorm.model.entity.produto in 'src\model\entity\projetosimpleorm.model.entity.produto.pas',
  projetosimpleorm.model.resource in 'src\model\resource\projetosimpleorm.model.resource.pas',
  projetosimpleorm.model.resource.impl.conexaofiredac in 'src\model\resource\impl\projetosimpleorm.model.resource.impl.conexaofiredac.pas',
  projetosimpleorm.model.resource.impl.configuracao in 'src\model\resource\impl\projetosimpleorm.model.resource.impl.configuracao.pas',
  projetosimpleorm.view.pages.cliente in 'src\view\pages\projetosimpleorm.view.pages.cliente.pas' {PageCliente},
  projetosimpleorm.view.pages.produto in 'src\view\pages\projetosimpleorm.view.pages.produto.pas' {PageProduto},
  projetosimpleorm.view.pages.configuracoes in 'src\view\pages\projetosimpleorm.view.pages.configuracoes.pas' {PageConfiguracoes},
  projetosimpleorm.model.resource.impl.factory in 'src\model\resource\impl\projetosimpleorm.model.resource.impl.factory.pas',
  projetosimpleorm.model.service.impl.simpleorm in 'src\model\service\impl\projetosimpleorm.model.service.impl.simpleorm.pas',
  projetosimpleorm.model.service in 'src\model\service\projetosimpleorm.model.service.pas',
  projetosimpleorm.model.entity.interfaces in 'src\model\entity\projetosimpleorm.model.entity.interfaces.pas',
  projetosimpleorm.model.entity.impl.factory in 'src\model\entity\impl\projetosimpleorm.model.entity.impl.factory.pas',
  projetosimpleorm.controller.dto.interfaces in 'src\controller\dto\projetosimpleorm.controller.dto.interfaces.pas',
  projetosimpleorm.controller.dto.impl.cliente in 'src\controller\dto\impl\projetosimpleorm.controller.dto.impl.cliente.pas',
  projetosimpleorm.controller.dto.impl.pessoa in 'src\controller\dto\impl\projetosimpleorm.controller.dto.impl.pessoa.pas',
  projetosimpleorm.controller.dto.impl.endereco in 'src\controller\dto\impl\projetosimpleorm.controller.dto.impl.endereco.pas',
  projetosimpleorm.controller.dto.impl.produto in 'src\controller\dto\impl\projetosimpleorm.controller.dto.impl.produto.pas',
  projetosimpleorm.controller.dto.impl.pedido in 'src\controller\dto\impl\projetosimpleorm.controller.dto.impl.pedido.pas',
  projetosimpleorm.controller.dto.impl.pedidoitens in 'src\controller\dto\impl\projetosimpleorm.controller.dto.impl.pedidoitens.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPagePedidoVenda, PagePedidoVenda);
  Application.CreateForm(TPageConfiguracoes, PageConfiguracoes);
  Application.Run;
end.
