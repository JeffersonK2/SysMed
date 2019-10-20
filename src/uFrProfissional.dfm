inherited frmProfissional: TfrmProfissional
  Caption = 'Profissional'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcManute: TPageControl
    ActivePage = tshManute
    ExplicitWidth = 694
    ExplicitHeight = 338
    inherited tshConsul: TTabSheet
      ExplicitWidth = 686
      ExplicitHeight = 328
    end
    inherited tshManute: TTabSheet
      ExplicitWidth = 686
      ExplicitHeight = 328
      inherited panManute: TPanel
        ExplicitTop = 3
        ExplicitWidth = 686
        ExplicitHeight = 328
        object edtPFINome: TcxDBTextEdit
          Left = 58
          Top = 80
          DataBinding.DataField = 'nome'
          DataBinding.DataSource = dtsManute
          TabOrder = 0
          Width = 543
        end
        object edtPFICodigo: TcxDBSpinEdit
          Left = 58
          Top = 32
          DataBinding.DataField = 'codigo'
          DataBinding.DataSource = dtsManute
          TabOrder = 1
          Width = 121
        end
      end
    end
  end
  inherited panBotoes: TPanel
    ExplicitTop = 338
    inherited btnSair: TBitBtn
      ExplicitLeft = 618
    end
    inherited btnAdicio: TcxButton
      ExplicitLeft = 1
      ExplicitTop = 1
    end
    inherited btnEditar: TcxButton
      ExplicitLeft = 76
      ExplicitTop = 1
    end
    inherited btnSalvar: TcxButton
      ExplicitLeft = 151
      ExplicitTop = 1
    end
    inherited btnCancel: TcxButton
      ExplicitLeft = 226
      ExplicitTop = 1
    end
    inherited BtnExcluir: TcxButton
      ExplicitLeft = 301
      ExplicitTop = 1
    end
  end
  inherited dtsConsul: TDataSource
    DataSet = qryConsul
  end
  inherited dtsManute: TDataSource
    DataSet = qryManute
  end
  inherited qryConsul: TZQuery
    SQL.Strings = (
      'SELECT * FROM PROFISSIONAL')
    object qryConsulcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qryConsulnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
  end
  inherited qryManute: TZQuery
    SQL.Strings = (
      'SELECT * FROM PROFISSIONAL WHERE CODIGO =:CODIGO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryManutecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qryManutenome: TWideStringField
      DisplayWidth = 40
      FieldName = 'nome'
      Size = 100
    end
  end
end
