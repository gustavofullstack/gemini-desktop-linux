# Gemini Desktop para Linux (não oficial)

Abre o **Gemini / Gemini Spark** (gemini.google.com) numa janela própria no Linux,
com ícone, entrada no menu e classe de janela `gemini`. Feito para CachyOS / Arch + Hyprland.

O Google lança o app de desktop do Gemini só para Windows e macOS. Este projeto **não** usa
nenhum código do app do Google: é um perfil isolado do Firefox em "modo app" (sem abas
nem barra de endereço). Usamos Firefox porque o login do Google bloqueia navegadores
embutidos (Electron/WebView) com o erro *"Esse navegador ou app pode não ser seguro"*.

> Projeto independente, sem afiliação com o Google. "Gemini" é marca do Google LLC;
> o ícone é baixado do Google na hora da instalação e não é redistribuído aqui.

## Instalar

Sem root (em `~/.local`):

```sh
git clone https://github.com/gustavomar/gemini-desktop-linux
cd gemini-desktop-linux
./install.sh
```

Arch / CachyOS (pacote do sistema):

```sh
makepkg -si
```

Requer `firefox`. O Gemini Spark precisa de plano Google AI Pro/Ultra.

## Hyprland: Gemini na própria mesa

Copie a regra de `hyprland/gemini.lua` (config em Lua) ou `hyprland/gemini.conf`
(config clássica) para a sua configuração.

## Atalho global

`hyprland/gemini-toggle` faz o mesmo papel do atalho Option+Space do app oficial:
abre o Gemini se ele estiver fechado e alterna entre a mesa do Gemini e a anterior.
Copie para o seu `PATH` e use o bind de `hyprland/gemini.lua` ou `gemini.conf` (SUPER+I).
Ele usa `hyprctl dispatch` no formato da config em Lua; na config clássica, troque por
`hyprctl dispatch workspace 6` / `workspace previous`.

## Como funciona

- `gemini-desktop` cria o perfil em `~/.local/share/gemini-desktop/firefox-profile`
  na primeira execução e abre `https://gemini.google.com/spark`.
- `profile/chrome/userChrome.css` esconde abas e barra de endereço.
- O login fica salvo só nesse perfil, separado do seu Firefox normal.

## Licença

MIT
