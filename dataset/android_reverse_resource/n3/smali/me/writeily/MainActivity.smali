.class public Lme/writeily/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private browseToFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private confirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private createFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private doubleBackToExitPressedOnce:Z

.field private fabCreateFolder:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private fabCreateNote:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private fabMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private frameLayout:Landroid/view/View;

.field private fsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private notesFragment:Lme/writeily/NotesFragment;

.field private renameBroadcastReceiver:Lme/writeily/RenameBroadcastReceiver;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3d650395c0d88ee0L    # 5.972539100890649E-13

    const-string v2, "me/writeily/MainActivity"

    const/16 v3, 0x81

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 46
    new-instance v1, Lme/writeily/MainActivity$1;

    invoke-direct {v1, p0}, Lme/writeily/MainActivity$1;-><init>(Lme/writeily/MainActivity;)V

    iput-object v1, p0, Lme/writeily/MainActivity;->createFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    aput-boolean v2, v0, v2

    .line 56
    new-instance v1, Lme/writeily/MainActivity$2;

    invoke-direct {v1, p0}, Lme/writeily/MainActivity$2;-><init>(Lme/writeily/MainActivity;)V

    iput-object v1, p0, Lme/writeily/MainActivity;->fsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 71
    new-instance v1, Lme/writeily/MainActivity$3;

    invoke-direct {v1, p0}, Lme/writeily/MainActivity$3;-><init>(Lme/writeily/MainActivity;)V

    iput-object v1, p0, Lme/writeily/MainActivity;->confirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lme/writeily/MainActivity;Ljava/io/File;)Z
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lme/writeily/MainActivity;->createFolder(Ljava/io/File;)Z

    move-result v1

    const/16 v2, 0x7a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    const/16 v2, 0x7b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lme/writeily/MainActivity;Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lme/writeily/MainActivity;->importFile(Ljava/io/File;)V

    const/16 v1, 0x7c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lme/writeily/MainActivity;Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0, p1, p2}, Lme/writeily/MainActivity;->importFileToStorageDir(Landroid/content/Context;Ljava/io/File;)V

    const/16 v1, 0x7d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Lme/writeily/MainActivity;->createNote()V

    const/16 v1, 0x7e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$500(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Lme/writeily/MainActivity;->createFolder()V

    const/16 v1, 0x7f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$602(Lme/writeily/MainActivity;Z)Z
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iput-boolean p1, p0, Lme/writeily/MainActivity;->doubleBackToExitPressedOnce:Z

    const/16 v1, 0x80

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method private askForConfirmation(Ljava/io/Serializable;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lme/writeily/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/16 v2, 0x6b

    aput-boolean v5, v0, v2

    .line 350
    new-instance v2, Lme/writeily/dialog/ConfirmDialog;

    invoke-direct {v2}, Lme/writeily/dialog/ConfirmDialog;-><init>()V

    const/16 v3, 0x6c

    aput-boolean v5, v0, v3

    .line 351
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x6d

    aput-boolean v5, v0, v4

    .line 352
    const-string v4, "SOURCE_FILE"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v4, 0x6e

    aput-boolean v5, v0, v4

    .line 353
    invoke-virtual {v2, v3}, Lme/writeily/dialog/ConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v3, 0x6f

    aput-boolean v5, v0, v3

    .line 354
    const-string v3, "confirm_overwrite_dialog_tag"

    invoke-virtual {v2, v1, v3}, Lme/writeily/dialog/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 356
    const/16 v1, 0x70

    aput-boolean v5, v0, v1

    return-void
.end method

.method private createFolder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 174
    invoke-direct {p0}, Lme/writeily/MainActivity;->showFolderNameDialog()V

    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    .line 175
    iget-object v1, p0, Lme/writeily/MainActivity;->fabMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 176
    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createFolder(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 204
    const/4 v0, 0x0

    const/16 v2, 0x32

    aput-boolean v3, v1, v2

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x33

    aput-boolean v3, v1, v2

    .line 210
    .local v0, "success":Z
    :goto_0
    const/16 v2, 0x36

    aput-boolean v3, v1, v2

    return v0

    .line 206
    .end local v0    # "success":Z
    :cond_0
    const/16 v2, 0x34

    aput-boolean v3, v1, v2

    .line 207
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .restart local v0    # "success":Z
    const/16 v2, 0x35

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private createNote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lme/writeily/NoteActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x23

    aput-boolean v4, v0, v2

    .line 167
    const-string v2, "note_source_dir"

    iget-object v3, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v3}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x24

    aput-boolean v4, v0, v2

    .line 168
    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x25

    aput-boolean v4, v0, v1

    .line 169
    const v1, 0x7f04000b

    const v2, 0x7f04000f

    invoke-virtual {p0, v1, v2}, Lme/writeily/MainActivity;->overridePendingTransition(II)V

    const/16 v1, 0x26

    aput-boolean v4, v0, v1

    .line 170
    iget-object v1, p0, Lme/writeily/MainActivity;->fabMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 171
    const/16 v1, 0x27

    aput-boolean v4, v0, v1

    return-void
.end method

.method private importFile(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 341
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x67

    aput-boolean v4, v0, v1

    .line 342
    invoke-direct {p0, p1}, Lme/writeily/MainActivity;->askForConfirmation(Ljava/io/Serializable;)V

    const/16 v1, 0x68

    aput-boolean v4, v0, v1

    .line 346
    :goto_0
    const/16 v1, 0x6a

    aput-boolean v4, v0, v1

    return-void

    .line 344
    :cond_0
    invoke-direct {p0, p0, p1}, Lme/writeily/MainActivity;->importFileToStorageDir(Landroid/content/Context;Ljava/io/File;)V

    const/16 v1, 0x69

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private importFileToStorageDir(Landroid/content/Context;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    .line 88
    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v4, v0, v3

    .line 87
    invoke-virtual {v1, p2, v2}, Lme/writeily/model/WriteilySingleton;->copyFile(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Imported to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 90
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 91
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void
.end method

.method private initFolders()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    new-instance v1, Ljava/io/File;

    sget-object v2, Lme/writeily/model/Constants;->DEFAULT_WRITEILY_STORAGE_FOLDER:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x30

    aput-boolean v3, v0, v2

    .line 194
    invoke-direct {p0, v1}, Lme/writeily/MainActivity;->createFolder(Ljava/io/File;)Z

    .line 195
    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    return-void
.end method

.method private setToolbarTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 362
    iget-object v1, p0, Lme/writeily/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    const/16 v1, 0x71

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setupAppearancePreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 312
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0600b4

    invoke-virtual {p0, v2}, Lme/writeily/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-boolean v4, v0, v2

    .line 314
    const v2, 0x7f06007b

    invoke-virtual {p0, v2}, Lme/writeily/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    aput-boolean v4, v0, v1

    .line 315
    iget-object v1, p0, Lme/writeily/MainActivity;->frameLayout:Landroid/view/View;

    invoke-virtual {p0}, Lme/writeily/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x5c

    aput-boolean v4, v0, v1

    .line 319
    :goto_0
    const/16 v1, 0x5e

    aput-boolean v4, v0, v1

    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lme/writeily/MainActivity;->frameLayout:Landroid/view/View;

    invoke-virtual {p0}, Lme/writeily/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x5d

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private showFolderNameDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lme/writeily/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/16 v2, 0x2a

    aput-boolean v5, v0, v2

    .line 181
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x2b

    aput-boolean v5, v0, v3

    .line 182
    const-string v3, "current_dir_folder_key"

    iget-object v4, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v4}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2c

    aput-boolean v5, v0, v3

    .line 184
    new-instance v3, Lme/writeily/dialog/CreateFolderDialog;

    invoke-direct {v3}, Lme/writeily/dialog/CreateFolderDialog;-><init>()V

    const/16 v4, 0x2d

    aput-boolean v5, v0, v4

    .line 185
    invoke-virtual {v3, v2}, Lme/writeily/dialog/CreateFolderDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v2, 0x2e

    aput-boolean v5, v0, v2

    .line 186
    const-string v2, "create_folder_dialog_tag"

    invoke-virtual {v3, v1, v2}, Lme/writeily/dialog/CreateFolderDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 187
    const/16 v1, 0x2f

    aput-boolean v5, v0, v1

    return-void
.end method

.method private showImportDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 330
    invoke-virtual {p0}, Lme/writeily/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/16 v2, 0x61

    aput-boolean v5, v0, v2

    .line 332
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x62

    aput-boolean v5, v0, v3

    .line 333
    const-string v3, "FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY"

    const-string v4, "FILESYSTEM_FILE_ACCESS_TYPE"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x63

    aput-boolean v5, v0, v3

    .line 335
    new-instance v3, Lme/writeily/dialog/FilesystemDialog;

    invoke-direct {v3}, Lme/writeily/dialog/FilesystemDialog;-><init>()V

    const/16 v4, 0x64

    aput-boolean v5, v0, v4

    .line 336
    invoke-virtual {v3, v2}, Lme/writeily/dialog/FilesystemDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v2, 0x65

    aput-boolean v5, v0, v2

    .line 337
    const-string v2, "filesystem_import_dialog_tag"

    invoke-virtual {v3, v1, v2}, Lme/writeily/dialog/FilesystemDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 338
    const/16 v1, 0x66

    aput-boolean v5, v0, v1

    return-void
.end method

.method private showSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 325
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lme/writeily/settings/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x5f

    aput-boolean v3, v0, v2

    .line 326
    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 327
    const/16 v1, 0x60

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 367
    iget-boolean v1, p0, Lme/writeily/MainActivity;->doubleBackToExitPressedOnce:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x72

    aput-boolean v3, v0, v1

    .line 368
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 369
    const/16 v1, 0x73

    aput-boolean v3, v0, v1

    .line 386
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->onRooDir()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x74

    aput-boolean v3, v0, v1

    .line 373
    iget-object v1, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->goToPreviousDir()V

    const/16 v1, 0x75

    aput-boolean v3, v0, v1

    .line 386
    :goto_1
    const/16 v1, 0x79

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 375
    :cond_1
    iput-boolean v3, p0, Lme/writeily/MainActivity;->doubleBackToExitPressedOnce:Z

    const/16 v1, 0x76

    aput-boolean v3, v0, v1

    .line 376
    const-string v1, "Please click BACK again to exit"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x77

    aput-boolean v3, v0, v1

    .line 378
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lme/writeily/MainActivity$8;

    invoke-direct {v2, p0}, Lme/writeily/MainActivity$8;-><init>(Lme/writeily/MainActivity;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v1, 0x78

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0c0061

    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 101
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 102
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lme/writeily/MainActivity;->setContentView(I)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 104
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lme/writeily/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lme/writeily/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 105
    iget-object v0, p0, Lme/writeily/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 109
    :goto_0
    invoke-virtual {p0, v5}, Lme/writeily/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/MainActivity;->frameLayout:Landroid/view/View;

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 111
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lme/writeily/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v0, p0, Lme/writeily/MainActivity;->fabMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    .line 112
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lme/writeily/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lme/writeily/MainActivity;->fabCreateNote:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    .line 113
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lme/writeily/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lme/writeily/MainActivity;->fabCreateFolder:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    .line 115
    iget-object v0, p0, Lme/writeily/MainActivity;->fabCreateNote:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lme/writeily/MainActivity$4;

    invoke-direct {v2, p0}, Lme/writeily/MainActivity$4;-><init>(Lme/writeily/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x12

    aput-boolean v4, v1, v0

    .line 122
    iget-object v0, p0, Lme/writeily/MainActivity;->fabCreateFolder:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lme/writeily/MainActivity$5;

    invoke-direct {v2, p0}, Lme/writeily/MainActivity$5;-><init>(Lme/writeily/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    .line 130
    new-instance v0, Lme/writeily/NotesFragment;

    invoke-direct {v0}, Lme/writeily/NotesFragment;-><init>()V

    iput-object v0, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    const/16 v0, 0x14

    aput-boolean v4, v1, v0

    .line 132
    new-instance v0, Lme/writeily/RenameBroadcastReceiver;

    iget-object v2, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    invoke-direct {v0, v2}, Lme/writeily/RenameBroadcastReceiver;-><init>(Lme/writeily/NotesFragment;)V

    iput-object v0, p0, Lme/writeily/MainActivity;->renameBroadcastReceiver:Lme/writeily/RenameBroadcastReceiver;

    const/16 v0, 0x15

    aput-boolean v4, v1, v0

    .line 133
    new-instance v0, Lme/writeily/CurrentFolderChangedReceiver;

    invoke-direct {v0, p0}, Lme/writeily/CurrentFolderChangedReceiver;-><init>(Lme/writeily/MainActivity;)V

    iput-object v0, p0, Lme/writeily/MainActivity;->browseToFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x16

    aput-boolean v4, v1, v0

    .line 136
    invoke-virtual {p0}, Lme/writeily/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    .line 137
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lme/writeily/MainActivity;->notesFragment:Lme/writeily/NotesFragment;

    const/16 v3, 0x18

    aput-boolean v4, v1, v3

    .line 138
    invoke-virtual {v0, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v2, 0x19

    aput-boolean v4, v1, v2

    .line 139
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const/16 v0, 0x1a

    aput-boolean v4, v1, v0

    .line 141
    invoke-direct {p0}, Lme/writeily/MainActivity;->initFolders()V

    .line 142
    const/16 v0, 0x1b

    aput-boolean v4, v1, v0

    return-void

    .line 105
    :cond_0
    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 106
    iget-object v0, p0, Lme/writeily/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lme/writeily/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 216
    invoke-virtual {p0}, Lme/writeily/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v0, 0x37

    aput-boolean v5, v2, v0

    .line 218
    const v0, 0x7f0c00a3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v0, 0x38

    aput-boolean v5, v2, v0

    .line 220
    invoke-static {v3}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    const/16 v1, 0x39

    aput-boolean v5, v2, v1

    .line 222
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    const/16 v4, 0x3a

    aput-boolean v5, v2, v4

    .line 223
    invoke-virtual {p0}, Lme/writeily/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 224
    if-nez v0, :cond_0

    const/16 v0, 0x3b

    aput-boolean v5, v2, v0

    .line 269
    :goto_0
    const/16 v0, 0x40

    aput-boolean v5, v2, v0

    return v5

    .line 224
    :cond_0
    const/16 v1, 0x3c

    aput-boolean v5, v2, v1

    .line 225
    new-instance v1, Lme/writeily/MainActivity$6;

    invoke-direct {v1, p0}, Lme/writeily/MainActivity$6;-><init>(Lme/writeily/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    const/16 v1, 0x3d

    aput-boolean v5, v2, v1

    .line 250
    new-instance v1, Lme/writeily/MainActivity$7;

    invoke-direct {v1, p0, p1, v3, v0}, Lme/writeily/MainActivity$7;-><init>(Lme/writeily/MainActivity;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v1, 0x3e

    aput-boolean v5, v2, v1

    .line 266
    const v1, 0x7f06006b

    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3f

    aput-boolean v5, v2, v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 146
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/16 v1, 0x1c

    aput-boolean v0, v2, v1

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0c00a5

    if-ne v1, v3, :cond_0

    const/16 v1, 0x1d

    aput-boolean v0, v2, v1

    .line 149
    invoke-direct {p0}, Lme/writeily/MainActivity;->showSettings()V

    .line 150
    const/16 v1, 0x1e

    aput-boolean v0, v2, v1

    .line 155
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0c00a4

    if-ne v1, v3, :cond_1

    const/16 v1, 0x1f

    aput-boolean v0, v2, v1

    .line 152
    invoke-direct {p0}, Lme/writeily/MainActivity;->showImportDialog()V

    .line 153
    const/16 v1, 0x20

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v1, 0x0

    const/16 v3, 0x21

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 303
    iget-object v1, p0, Lme/writeily/MainActivity;->createFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x54

    aput-boolean v2, v0, v1

    .line 304
    iget-object v1, p0, Lme/writeily/MainActivity;->fsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x55

    aput-boolean v2, v0, v1

    .line 305
    iget-object v1, p0, Lme/writeily/MainActivity;->confirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x56

    aput-boolean v2, v0, v1

    .line 306
    iget-object v1, p0, Lme/writeily/MainActivity;->renameBroadcastReceiver:Lme/writeily/RenameBroadcastReceiver;

    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x57

    aput-boolean v2, v0, v1

    .line 307
    iget-object v1, p0, Lme/writeily/MainActivity;->browseToFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lme/writeily/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x58

    aput-boolean v2, v0, v1

    .line 308
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 309
    const/16 v1, 0x59

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 274
    invoke-direct {p0}, Lme/writeily/MainActivity;->setupAppearancePreferences()V

    const/16 v1, 0x41

    aput-boolean v3, v0, v1

    .line 276
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x42

    aput-boolean v3, v0, v2

    .line 277
    const-string v2, "create_folder_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x43

    aput-boolean v3, v0, v2

    .line 278
    iget-object v2, p0, Lme/writeily/MainActivity;->createFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lme/writeily/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x44

    aput-boolean v3, v0, v1

    .line 280
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x45

    aput-boolean v3, v0, v2

    .line 281
    const-string v2, "filesystem_import_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x46

    aput-boolean v3, v0, v2

    .line 282
    const-string v2, "filesystem_move_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x47

    aput-boolean v3, v0, v2

    .line 283
    iget-object v2, p0, Lme/writeily/MainActivity;->fsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lme/writeily/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x48

    aput-boolean v3, v0, v1

    .line 285
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x49

    aput-boolean v3, v0, v2

    .line 286
    const-string v2, "confirm_delete_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x4a

    aput-boolean v3, v0, v2

    .line 287
    const-string v2, "confirm_overwrite_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x4b

    aput-boolean v3, v0, v2

    .line 288
    iget-object v2, p0, Lme/writeily/MainActivity;->confirmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lme/writeily/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x4c

    aput-boolean v3, v0, v1

    .line 290
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x4d

    aput-boolean v3, v0, v2

    .line 291
    const-string v2, "RENAME_DIALOG_TAG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x4e

    aput-boolean v3, v0, v2

    .line 292
    iget-object v2, p0, Lme/writeily/MainActivity;->renameBroadcastReceiver:Lme/writeily/RenameBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lme/writeily/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x4f

    aput-boolean v3, v0, v1

    .line 294
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x50

    aput-boolean v3, v0, v2

    .line 295
    const-string v2, "current_folder_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x51

    aput-boolean v3, v0, v2

    .line 296
    iget-object v2, p0, Lme/writeily/MainActivity;->browseToFolderBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lme/writeily/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v1, 0x52

    aput-boolean v3, v0, v1

    .line 298
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 299
    const/16 v1, 0x53

    aput-boolean v3, v0, v1

    return-void
.end method
