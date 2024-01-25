import 'package:flutter/material.dart';
import 'package:p1/Widgets/Internal%20Storage%20Page%20Widgets/storage_folders.dart';

class Internal_Storage_Folders extends StatelessWidget {
  const Internal_Storage_Folders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Storage_folders(
          ListTitle: "Android",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "Downloads",
          ListSubtitle: "10 items",
        ),
        Storage_folders(
          ListTitle: "Pictures",
          ListSubtitle: "400 items",
        ),
        Storage_folders(
          ListTitle: "Documents",
          ListSubtitle: "10 items",
        ),
        Storage_folders(
          ListTitle: "Movies",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "Music",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "SHAREit Lite",
          ListSubtitle: "2 items",
        ),
        Storage_folders(
          ListTitle: "Instander",
          ListSubtitle: "1 items",
        ),
        Storage_folders(
          ListTitle: "DCIM",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "MT2",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "VidMate",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "PLAYit",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "Tencent",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "Backups",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "Screenshots",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "New Folder ",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "New Folder 1",
          ListSubtitle: "4 items",
        ),
        Storage_folders(
          ListTitle: "New Folder 2",
          ListSubtitle: "4 items",
        ),
      ],
    );
  }
}
