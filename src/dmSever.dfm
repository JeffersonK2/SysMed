object dmServer: TdmServer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    ClientCodepage = 'LATIN1'
    Catalog = ''
    Properties.Strings = (
      'codepage=LATIN1')
    HostName = 'localhost'
    Port = 5433
    Database = 'saude'
    User = 'postgres'
    Password = 'ids0207'
    Protocol = 'postgresql'
    Left = 16
    Top = 24
  end
end
