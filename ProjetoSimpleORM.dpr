program ProjetoSimpleORM;

uses
  Vcl.Forms,
  projetosimpleorm.view.pages.pedidovenda in 'src\view\pages\projetosimpleorm.view.pages.pedidovenda.pas' {PagePedidoVenda},
  projetosimpleorm.model.entity.pedido in 'src\model\entity\projetosimpleorm.model.entity.pedido.pas',
  projetosimpleorm.model.entity.pedidoitens in 'src\model\entity\projetosimpleorm.model.entity.pedidoitens.pas',
  projetosimpleorm.model.entity.pessoa in 'src\model\entity\projetosimpleorm.model.entity.pessoa.pas',
  projetosimpleorm.model.entity.endereco in 'src\model\entity\projetosimpleorm.model.entity.endereco.pas',
  projetosimpleorm.model.entity.contato in 'src\model\entity\projetosimpleorm.model.entity.contato.pas',
  projetosimpleorm.model.entity.cliente in 'src\model\entity\projetosimpleorm.model.entity.cliente.pas',
  projetosimpleorm.model.entity.produto in 'src\model\entity\projetosimpleorm.model.entity.produto.pas',
  projetosimpleorm.model.resource.conexao in 'src\model\resource\projetosimpleorm.model.resource.conexao.pas',
  projetosimpleorm.model.resource.impl.conexao in 'src\model\resource\impl\projetosimpleorm.model.resource.impl.conexao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPagePedidoVenda, PagePedidoVenda);
  Application.Run;
end.
