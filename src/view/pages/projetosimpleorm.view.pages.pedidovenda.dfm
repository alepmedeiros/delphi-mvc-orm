object PagePedidoVenda: TPagePedidoVenda
  Left = 0
  Top = 0
  Caption = 'Projeto usando SimpleORM'
  ClientHeight = 656
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 656
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 751
    ExplicitHeight = 717
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 747
      Height = 209
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 20
      Padding.Right = 20
      TabOrder = 0
      ExplicitTop = 4
      ExplicitWidth = 751
      object Label10: TLabel
        Left = 28
        Top = 147
        Width = 74
        Height = 13
        Caption = 'C'#243'digo Produto'
      end
      object Label11: TLabel
        Left = 179
        Top = 147
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label12: TLabel
        Left = 300
        Top = 147
        Width = 64
        Height = 13
        Caption = 'Valor Unit'#225'rio'
      end
      object Label13: TLabel
        Left = 28
        Top = 91
        Width = 69
        Height = 13
        Caption = 'C'#243'digo Cliente'
      end
      object Label14: TLabel
        Left = 179
        Top = 91
        Width = 78
        Height = 13
        Caption = 'Nome do Cliente'
      end
      object Panel5: TPanel
        Left = 20
        Top = 161
        Width = 153
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 2
        object Shape1: TShape
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitTop = 8
        end
        object edtCodigoProduto: TEdit
          Left = 14
          Top = 12
          Width = 126
          Height = 18
          Alignment = taRightJustify
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel6: TPanel
        Left = 174
        Top = 161
        Width = 119
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 3
        object Shape2: TShape
          Left = 5
          Top = 5
          Width = 109
          Height = 31
          Align = alClient
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 24
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object edtQuantidade: TEdit
          Left = 14
          Top = 12
          Width = 91
          Height = 18
          Alignment = taRightJustify
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Left = 294
        Top = 161
        Width = 153
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 4
        object Shape3: TShape
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 24
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object edtValorUnitario: TEdit
          Left = 14
          Top = 12
          Width = 126
          Height = 18
          Alignment = taRightJustify
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 582
        Top = 161
        Width = 153
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 5
        object Shape4: TShape
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Brush.Color = 7381814
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 24
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnConfirmar: TSpeedButton
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Caption = 'Confirmar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 4
        end
      end
      object Panel11: TPanel
        Left = 20
        Top = 106
        Width = 153
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object Shape7: TShape
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitTop = 8
        end
        object edtCodigoCliente: TEdit
          Left = 14
          Top = 11
          Width = 126
          Height = 18
          Alignment = taRightJustify
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel12: TPanel
        Left = 174
        Top = 106
        Width = 363
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object Shape8: TShape
          Left = 5
          Top = 5
          Width = 353
          Height = 31
          Align = alClient
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 24
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object edtNomeCliente: TEdit
          Left = 14
          Top = 12
          Width = 331
          Height = 18
          BorderStyle = bsNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel13: TPanel
        Left = 20
        Top = 0
        Width = 707
        Height = 66
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        ExplicitWidth = 711
        object Label2: TLabel
          Left = 20
          Top = 6
          Width = 72
          Height = 21
          Caption = 'Pedido de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3881271
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 20
          Top = 23
          Width = 97
          Height = 47
          Caption = 'Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3881271
          Font.Height = -35
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 421
          Top = 8
          Width = 87
          Height = 13
          Caption = 'N'#250'mero do Pedido'
        end
        object Panel14: TPanel
          Left = 415
          Top = 27
          Width = 143
          Height = 41
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 0
          object Shape11: TShape
            Left = 5
            Top = 5
            Width = 133
            Height = 31
            Align = alClient
            Pen.Color = 11710638
            Shape = stRoundRect
            ExplicitTop = 8
            ExplicitWidth = 143
          end
          object edtNumeroPedido: TEdit
            Left = 14
            Top = 11
            Width = 115
            Height = 18
            Alignment = taRightJustify
            BorderStyle = bsNone
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel15: TPanel
          Left = 558
          Top = 27
          Width = 153
          Height = 41
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 1
          object Shape12: TShape
            Left = 5
            Top = 5
            Width = 143
            Height = 31
            Align = alClient
            Brush.Color = 7381814
            Pen.Color = 11710638
            Shape = stRoundRect
            ExplicitLeft = 24
            ExplicitTop = 16
            ExplicitWidth = 65
            ExplicitHeight = 65
          end
          object btnListar_ListarTodos: TSpeedButton
            Left = 5
            Top = 5
            Width = 143
            Height = 31
            Align = alClient
            Caption = 'Listar / Listar Todos'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitTop = 4
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 209
      Width = 747
      Height = 389
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 20
      Padding.Top = 10
      Padding.Right = 20
      Padding.Bottom = 10
      TabOrder = 1
      ExplicitTop = 193
      ExplicitWidth = 751
      ExplicitHeight = 466
      object gridItensPedido: TDBGrid
        Left = 20
        Top = 10
        Width = 707
        Height = 369
        Align = alClient
        BorderStyle = bsNone
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            ReadOnly = True
            Title.Caption = 'C'#243'digo'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o'
            Width = 273
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorUnitario'
            Title.Caption = 'Valor Unit'#225'rio'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            ReadOnly = True
            Width = 113
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 598
      Width = 747
      Height = 58
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 659
      ExplicitWidth = 751
      object Panel9: TPanel
        Left = 465
        Top = 8
        Width = 265
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object Shape5: TShape
          Left = 5
          Top = 5
          Width = 255
          Height = 31
          Align = alClient
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = -3
          ExplicitTop = -3
          ExplicitWidth = 143
        end
        object Label8: TLabel
          Left = 14
          Top = 13
          Width = 81
          Height = 13
          Caption = 'Total do Pedido: '
        end
        object lblValorTotal: TLabel
          Left = 214
          Top = 13
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'R$ 0,00'
        end
      end
      object Panel10: TPanel
        Left = 11
        Top = 8
        Width = 153
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object Shape6: TShape
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Brush.Color = 7381814
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 24
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnFinalizarPedido: TSpeedButton
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Caption = 'Finalizar Pedido'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = -11
        end
      end
      object pnlButtonCancelar: TPanel
        Left = 168
        Top = 8
        Width = 153
        Height = 41
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 2
        object Shape9: TShape
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Brush.Color = 3681203
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 24
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnCancelarpedido: TSpeedButton
          Left = 5
          Top = 5
          Width = 143
          Height = 31
          Align = alClient
          Caption = 'Cancelar Pedido'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = -11
        end
      end
    end
  end
end
