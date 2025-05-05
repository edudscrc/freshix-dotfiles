#! /bin/bash

cd ./Adwaita
./parse-sass.sh
mkdir -p ~/.themes/ArchEVA-01/gtk-3.0
cat <<EOL >> "./gtk-contained-dark.css"

box > scrolledwindow .view,
box > scrolledwindow .view:backdrop {
  background-color: #12161f;
}

box > scrolledwindow > treeview .view:selected:focus,
box > scrolledwindow > treeview .view:selected { 
  background-color: #4e6a89; 
  color: #12161f;
}

toolitem>widget>box>entry, 
toolitem>widget>box>entry:backdrop {
  background-color: #12161f;
}

.view:selected {
  color: #12161f;
}

EOL
cp ./gtk-contained-dark.css ~/.themes/ArchEVA-01/gtk-3.0/gtk.css
cp -r ./assets ~/.themes/ArchEVA-01/gtk-3.0/assets
