MsgBox, 64, Farma senhas, Vamos iniciar!
InputBox, vUser,Informe o Nome do Usuario, Informe o Nome do Usuario do sistema ,150,400
if (vUser <= 0)
{
    exit
}

InputBox, vSenha,Informe o Senha, Informe o Senha do %vUser% do sistema,200,400
if (vSenha <= 0)
{
    exit
}

While 1 > 0
{
;Identificar tela de autentificação
WinWait, Autenticação
IfWinNotActive, Autenticação , WinActivate, Autenticação
WinWaitActive, Autenticação
;clicar no edit de usuario
;ControlFocus, WindowsForms10.EDIT.app.0.141b42a_r7_ad12, Autenticação
ControlFocus, WindowsForms10.EDIT.app.0.141b42a_r7_ad12, Autenticação
    ;;send, ^+A
    Send, {CTRLDOWN}a{CTRLUP}
    Send, {DEL}
    ;digitar adm
    Send, %vUser%
    Send, {ENTER}
;clicar no edit de senha
ControlFocus, WindowsForms10.Window.8.app.0.141b42a_r7_ad1, Autenticação
    ;;send, ^+A
    Send, {CTRLDOWN}a{CTRLUP}
    Send, {DEL}
    ;digitar senha
    Send, %vSenha%
    ;clicar em confirmar
    Send, {ENTER}
    
}

