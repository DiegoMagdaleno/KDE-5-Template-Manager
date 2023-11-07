#!/bin/bash

bindir="$HOME/.local/bin"
servicedir="$HOME/.local/share/kservices5/ServiceMenus"

mkdir -p "$bindir"
mkdir -p "$servicedir"

cp "./TemplateCreator.sh" "$bindir"
cp "./TemplateEditor.sh" "$bindir"
cp "./TemplateEraser.sh" "$bindir"
cp "./TemplateManagerLocalization.sh" "$bindir"
cp "./TemplateManagerTools.sh" "$bindir"
chmod +x "$bindir/TemplateCreator.sh"
chmod +x "$bindir/TemplateEditor.sh"
chmod +x "$bindir/TemplateEraser.sh"

cp "./TemplateManager_File.desktop" "$servicedir"
cp "./TemplateManager_Dir.desktop" "$servicedir"

kdialog --msgbox "$(str_installed)" --title "$(str_window_title)" --icon "$creator_icon"
