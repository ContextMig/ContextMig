.class public Lme/writeily/NotesFragment;
.super Landroid/app/Fragment;
.source "NotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/writeily/NotesFragment$PreviousDirClickListener;,
        Lme/writeily/NotesFragment$NotesItemClickListener;,
        Lme/writeily/NotesFragment$ActionModeCallback;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final RENAME_CONTEXT_BUTTON_ID:I = 0x67


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private context:Landroid/content/Context;

.field private currentDir:Ljava/io/File;

.field private filesAdapter:Lme/writeily/adapter/NotesAdapter;

.field private filesCurrentlyShown:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private filesListView:Landroid/widget/ListView;

.field private hintTextView:Landroid/widget/TextView;

.field private layoutView:Landroid/view/View;

.field private rootDir:Ljava/io/File;

.field private sectionizer:Lcom/mobsandgeeks/adapters/Sectionizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mobsandgeeks/adapters/Sectionizer",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mobsandgeeks/adapters/SimpleSectionAdapter",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private writeilySingleton:Lme/writeily/model/WriteilySingleton;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/NotesFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x43ce1f3bfe93b624L    # 4.3410390200035758E18

    const-string v2, "me/writeily/NotesFragment"

    const/16 v3, 0x6c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/NotesFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lme/writeily/NotesFragment;->filesCurrentlyShown:Ljava/util/ArrayList;

    aput-boolean v2, v0, v2

    .line 58
    new-instance v1, Lme/writeily/NotesFragment$1;

    invoke-direct {v1, p0}, Lme/writeily/NotesFragment$1;-><init>(Lme/writeily/NotesFragment;)V

    iput-object v1, p0, Lme/writeily/NotesFragment;->sectionizer:Lcom/mobsandgeeks/adapters/Sectionizer;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lme/writeily/NotesFragment;->selectedItems:Ljava/util/List;

    .line 69
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$202(Lme/writeily/NotesFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iput-object p1, p0, Lme/writeily/NotesFragment;->actionMode:Landroid/view/ActionMode;

    const/16 v1, 0x64

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$300(Lme/writeily/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Lme/writeily/NotesFragment;->confirmDelete()V

    const/16 v1, 0x65

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lme/writeily/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Lme/writeily/NotesFragment;->promptForDirectory()V

    const/16 v1, 0x66

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$500(Lme/writeily/NotesFragment;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lme/writeily/NotesFragment;->selectedItems:Ljava/util/List;

    const/16 v2, 0x67

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lme/writeily/NotesFragment;)Landroid/widget/ListView;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lme/writeily/NotesFragment;->filesListView:Landroid/widget/ListView;

    const/16 v2, 0x68

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lme/writeily/NotesFragment;)Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lme/writeily/NotesFragment;->simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    const/16 v2, 0x69

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$802(Lme/writeily/NotesFragment;Ljava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iput-object p1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    const/16 v1, 0x6a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$900(Lme/writeily/NotesFragment;)Landroid/content/Context;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lme/writeily/NotesFragment;->context:Landroid/content/Context;

    const/16 v2, 0x6b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private broadcastDirectoryChange(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x39

    aput-boolean v3, v0, v2

    .line 167
    const-string v2, "current_folder_changed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3a

    aput-boolean v3, v0, v2

    .line 168
    const-string v2, "filesystem_current_folder"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x3b

    aput-boolean v3, v0, v2

    .line 169
    const-string v2, "filesystem_root_dir"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x3c

    aput-boolean v3, v0, v2

    .line 170
    invoke-virtual {p0}, Lme/writeily/NotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v1, 0x3d

    aput-boolean v3, v0, v1

    .line 171
    invoke-virtual {p0}, Lme/writeily/NotesFragment;->clearSearchFilter()V

    .line 172
    const/16 v1, 0x3e

    aput-boolean v3, v0, v1

    return-void
.end method

.method private confirmDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lme/writeily/NotesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/16 v2, 0x2c

    aput-boolean v4, v0, v2

    .line 142
    new-instance v2, Lme/writeily/dialog/ConfirmDialog;

    invoke-direct {v2}, Lme/writeily/dialog/ConfirmDialog;-><init>()V

    const/16 v3, 0x2d

    aput-boolean v4, v0, v3

    .line 143
    const-string v3, "confirm_delete_dialog_tag"

    invoke-virtual {v2, v1, v3}, Lme/writeily/dialog/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 144
    const/16 v1, 0x2e

    aput-boolean v4, v0, v1

    return-void
.end method

.method private getRootFolderFromPrefsOrDefault()Ljava/io/File;
    .locals 5

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lme/writeily/NotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f0600b1

    invoke-virtual {p0, v3}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lme/writeily/model/Constants;->DEFAULT_WRITEILY_STORAGE_FOLDER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private promptForDirectory()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lme/writeily/NotesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/16 v2, 0x2f

    aput-boolean v5, v0, v2

    .line 149
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x30

    aput-boolean v5, v0, v3

    .line 150
    const-string v3, "FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY"

    const-string v4, "FILESYSTEM_FOLDER_ACCESS_TYPE"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x31

    aput-boolean v5, v0, v3

    .line 152
    new-instance v3, Lme/writeily/dialog/FilesystemDialog;

    invoke-direct {v3}, Lme/writeily/dialog/FilesystemDialog;-><init>()V

    const/16 v4, 0x32

    aput-boolean v5, v0, v4

    .line 153
    invoke-virtual {v3, v2}, Lme/writeily/dialog/FilesystemDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v2, 0x33

    aput-boolean v5, v0, v2

    .line 154
    const-string v2, "filesystem_move_dialog_tag"

    invoke-virtual {v3, v1, v2}, Lme/writeily/dialog/FilesystemDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 155
    const/16 v1, 0x34

    aput-boolean v5, v0, v1

    return-void
.end method

.method private reloadAdapter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v6

    .line 185
    iget-object v0, p0, Lme/writeily/NotesFragment;->filesAdapter:Lme/writeily/adapter/NotesAdapter;

    if-nez v0, :cond_0

    const/16 v0, 0x43

    aput-boolean v7, v6, v0

    .line 192
    :goto_0
    const/16 v0, 0x49

    aput-boolean v7, v6, v0

    return-void

    .line 185
    :cond_0
    const/16 v0, 0x44

    aput-boolean v7, v6, v0

    .line 186
    new-instance v0, Lme/writeily/adapter/NotesAdapter;

    iget-object v1, p0, Lme/writeily/NotesFragment;->context:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lme/writeily/NotesFragment;->filesCurrentlyShown:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lme/writeily/adapter/NotesAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lme/writeily/NotesFragment;->filesAdapter:Lme/writeily/adapter/NotesAdapter;

    const/16 v0, 0x45

    aput-boolean v7, v6, v0

    .line 187
    new-instance v0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    iget-object v1, p0, Lme/writeily/NotesFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lme/writeily/NotesFragment;->filesAdapter:Lme/writeily/adapter/NotesAdapter;

    const v3, 0x7f03002a

    const v4, 0x7f0c007c

    iget-object v5, p0, Lme/writeily/NotesFragment;->sectionizer:Lcom/mobsandgeeks/adapters/Sectionizer;

    invoke-direct/range {v0 .. v5}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;IILcom/mobsandgeeks/adapters/Sectionizer;)V

    iput-object v0, p0, Lme/writeily/NotesFragment;->simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    const/16 v0, 0x46

    aput-boolean v7, v6, v0

    .line 189
    iget-object v0, p0, Lme/writeily/NotesFragment;->filesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lme/writeily/NotesFragment;->simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x47

    aput-boolean v7, v6, v0

    .line 190
    iget-object v0, p0, Lme/writeily/NotesFragment;->simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    invoke-virtual {v0}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->notifyDataSetChanged()V

    const/16 v0, 0x48

    aput-boolean v7, v6, v0

    goto :goto_0
.end method

.method private reloadFiles(Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 178
    :try_start_0
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v2}, Lme/writeily/model/WriteilySingleton;->addFilesFromDirectory(Ljava/io/File;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/NotesFragment;->filesCurrentlyShown:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/16 v0, 0x3f

    aput-boolean v3, v1, v0

    .line 182
    :goto_0
    const/16 v0, 0x42

    aput-boolean v3, v1, v0

    return-void

    .line 179
    :catch_0
    move-exception v0

    const/16 v2, 0x40

    aput-boolean v3, v1, v2

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x41

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private retrieveCurrentFolder()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 114
    iget-object v3, p0, Lme/writeily/NotesFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0x17

    aput-boolean v6, v2, v4

    .line 115
    const v4, 0x7f0600b0

    invoke-virtual {p0, v4}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    .local v0, "isLastDirStored":Z
    if-nez v0, :cond_0

    const/16 v1, 0x18

    aput-boolean v6, v2, v1

    .line 123
    :goto_0
    iget-object v1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    if-eqz v1, :cond_2

    const/16 v1, 0x1e

    aput-boolean v6, v2, v1

    .line 126
    :goto_1
    const/16 v1, 0x23

    aput-boolean v6, v2, v1

    return-void

    .line 116
    :cond_0
    const/16 v4, 0x19

    aput-boolean v6, v2, v4

    .line 117
    const v4, 0x7f0600a9

    invoke-virtual {p0, v4}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    aput-boolean v6, v2, v4

    .line 118
    if-eqz v3, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1b

    aput-boolean v6, v2, v3

    :goto_2
    iput-object v1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    const/16 v1, 0x1d

    aput-boolean v6, v2, v1

    goto :goto_0

    :cond_1
    const/16 v3, 0x1c

    aput-boolean v6, v2, v3

    goto :goto_2

    .line 123
    :cond_2
    const/16 v1, 0x1f

    aput-boolean v6, v2, v1

    .line 124
    iget-object v1, p0, Lme/writeily/NotesFragment;->writeilySingleton:Lme/writeily/model/WriteilySingleton;

    invoke-virtual {v1}, Lme/writeily/model/WriteilySingleton;->getNotesLastDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lme/writeily/NotesFragment;->writeilySingleton:Lme/writeily/model/WriteilySingleton;

    invoke-virtual {v1}, Lme/writeily/model/WriteilySingleton;->getNotesLastDirectory()Ljava/io/File;

    move-result-object v1

    const/16 v3, 0x20

    aput-boolean v6, v2, v3

    :goto_3
    iput-object v1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    const/16 v1, 0x22

    aput-boolean v6, v2, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lme/writeily/NotesFragment;->rootDir:Ljava/io/File;

    const/16 v3, 0x21

    aput-boolean v6, v2, v3

    goto :goto_3
.end method

.method private saveCurrentFolder()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 129
    iget-object v1, p0, Lme/writeily/NotesFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v1, 0x24

    aput-boolean v5, v2, v1

    .line 130
    const v1, 0x7f0600b0

    invoke-virtual {p0, v1}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 132
    .local v0, "isLastDirStored":Z
    if-nez v0, :cond_0

    const/16 v1, 0x25

    aput-boolean v5, v2, v1

    .line 137
    :goto_0
    iget-object v1, p0, Lme/writeily/NotesFragment;->writeilySingleton:Lme/writeily/model/WriteilySingleton;

    iget-object v3, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    invoke-virtual {v1, v3}, Lme/writeily/model/WriteilySingleton;->setNotesLastDirectory(Ljava/io/File;)V

    .line 138
    const/16 v1, 0x2b

    aput-boolean v5, v2, v1

    return-void

    .line 132
    :cond_0
    const/16 v1, 0x26

    aput-boolean v5, v2, v1

    .line 133
    iget-object v1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    if-nez v1, :cond_1

    iget-object v1, p0, Lme/writeily/NotesFragment;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x27

    aput-boolean v5, v2, v4

    :goto_1
    const/16 v4, 0x29

    aput-boolean v5, v2, v4

    .line 134
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v4, 0x7f0600a9

    invoke-virtual {p0, v4}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x2a

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x28

    aput-boolean v5, v2, v4

    goto :goto_1
.end method

.method private showEmptyDirHintIfEmpty()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 203
    iget-object v1, p0, Lme/writeily/NotesFragment;->writeilySingleton:Lme/writeily/model/WriteilySingleton;

    iget-object v2, p0, Lme/writeily/NotesFragment;->filesCurrentlyShown:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lme/writeily/model/WriteilySingleton;->isDirectoryEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4e

    aput-boolean v3, v0, v1

    .line 204
    iget-object v1, p0, Lme/writeily/NotesFragment;->hintTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x4f

    aput-boolean v3, v0, v1

    .line 205
    iget-object v1, p0, Lme/writeily/NotesFragment;->hintTextView:Landroid/widget/TextView;

    const v2, 0x7f060033

    invoke-virtual {p0, v2}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x50

    aput-boolean v3, v0, v1

    .line 209
    :goto_0
    const/16 v1, 0x52

    aput-boolean v3, v0, v1

    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lme/writeily/NotesFragment;->hintTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x51

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clearSearchFilter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 240
    iget-object v1, p0, Lme/writeily/NotesFragment;->filesAdapter:Lme/writeily/adapter/NotesAdapter;

    invoke-virtual {v1}, Lme/writeily/adapter/NotesAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    const/16 v1, 0x5f

    aput-boolean v3, v0, v1

    .line 241
    iget-object v1, p0, Lme/writeily/NotesFragment;->simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    invoke-virtual {v1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->notifyDataSetChanged()V

    const/16 v1, 0x60

    aput-boolean v3, v0, v1

    .line 242
    invoke-direct {p0}, Lme/writeily/NotesFragment;->reloadAdapter()V

    .line 243
    const/16 v1, 0x61

    aput-boolean v3, v0, v1

    return-void
.end method

.method public finishActionMode()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 228
    iget-object v1, p0, Lme/writeily/NotesFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 229
    const/16 v1, 0x59

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getCurrentDir()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 212
    iget-object v0, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lme/writeily/NotesFragment;->getRootDir()Ljava/io/File;

    move-result-object v0

    const/16 v2, 0x53

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x55

    aput-boolean v3, v1, v2

    return-object v0

    :cond_0
    iget-object v0, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    const/16 v2, 0x54

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public getFilesAdapter()Lme/writeily/adapter/NotesAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 224
    iget-object v1, p0, Lme/writeily/NotesFragment;->filesAdapter:Lme/writeily/adapter/NotesAdapter;

    const/16 v2, 0x58

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getFilesListView()Landroid/widget/ListView;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 220
    iget-object v1, p0, Lme/writeily/NotesFragment;->filesListView:Landroid/widget/ListView;

    const/16 v2, 0x57

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getRootDir()Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 216
    iget-object v1, p0, Lme/writeily/NotesFragment;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x56

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 246
    iget-object v1, p0, Lme/writeily/NotesFragment;->selectedItems:Ljava/util/List;

    const/16 v2, 0x62

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public goToPreviousDir()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 195
    iget-object v1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    if-nez v1, :cond_0

    const/16 v1, 0x4a

    aput-boolean v2, v0, v1

    .line 199
    :goto_0
    invoke-virtual {p0}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/writeily/NotesFragment;->listFilesInDirectory(Ljava/io/File;)V

    .line 200
    const/16 v1, 0x4d

    aput-boolean v2, v0, v1

    return-void

    .line 195
    :cond_0
    const/16 v1, 0x4b

    aput-boolean v2, v0, v1

    .line 196
    iget-object v1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    const/16 v1, 0x4c

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public listFilesInDirectory(Ljava/io/File;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    invoke-direct {p0, p1}, Lme/writeily/NotesFragment;->reloadFiles(Ljava/io/File;)V

    const/16 v1, 0x35

    aput-boolean v2, v0, v1

    .line 160
    iget-object v1, p0, Lme/writeily/NotesFragment;->rootDir:Ljava/io/File;

    invoke-direct {p0, p1, v1}, Lme/writeily/NotesFragment;->broadcastDirectoryChange(Ljava/io/File;Ljava/io/File;)V

    const/16 v1, 0x36

    aput-boolean v2, v0, v1

    .line 161
    invoke-direct {p0}, Lme/writeily/NotesFragment;->showEmptyDirHintIfEmpty()V

    const/16 v1, 0x37

    aput-boolean v2, v0, v1

    .line 162
    invoke-direct {p0}, Lme/writeily/NotesFragment;->reloadAdapter()V

    .line 163
    const/16 v1, 0x38

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v6

    .line 73
    invoke-virtual {p0}, Lme/writeily/NotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/NotesFragment;->context:Landroid/content/Context;

    const/4 v0, 0x4

    aput-boolean v7, v6, v0

    .line 74
    const v0, 0x7f030029

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/NotesFragment;->layoutView:Landroid/view/View;

    const/4 v0, 0x5

    aput-boolean v7, v6, v0

    .line 75
    iget-object v0, p0, Lme/writeily/NotesFragment;->layoutView:Landroid/view/View;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/writeily/NotesFragment;->hintTextView:Landroid/widget/TextView;

    const/4 v0, 0x6

    aput-boolean v7, v6, v0

    .line 76
    iget-object v0, p0, Lme/writeily/NotesFragment;->layoutView:Landroid/view/View;

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lme/writeily/NotesFragment;->filesListView:Landroid/widget/ListView;

    const/4 v0, 0x7

    aput-boolean v7, v6, v0

    .line 78
    new-instance v0, Lme/writeily/adapter/NotesAdapter;

    iget-object v1, p0, Lme/writeily/NotesFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lme/writeily/NotesFragment;->filesCurrentlyShown:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3, v2}, Lme/writeily/adapter/NotesAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lme/writeily/NotesFragment;->filesAdapter:Lme/writeily/adapter/NotesAdapter;

    const/16 v0, 0x8

    aput-boolean v7, v6, v0

    .line 79
    new-instance v0, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    iget-object v1, p0, Lme/writeily/NotesFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lme/writeily/NotesFragment;->filesAdapter:Lme/writeily/adapter/NotesAdapter;

    const v3, 0x7f03002a

    const v4, 0x7f0c007c

    iget-object v5, p0, Lme/writeily/NotesFragment;->sectionizer:Lcom/mobsandgeeks/adapters/Sectionizer;

    invoke-direct/range {v0 .. v5}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;IILcom/mobsandgeeks/adapters/Sectionizer;)V

    iput-object v0, p0, Lme/writeily/NotesFragment;->simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    const/16 v0, 0x9

    aput-boolean v7, v6, v0

    .line 82
    iget-object v0, p0, Lme/writeily/NotesFragment;->filesListView:Landroid/widget/ListView;

    new-instance v1, Lme/writeily/NotesFragment$NotesItemClickListener;

    invoke-direct {v1, p0, v8}, Lme/writeily/NotesFragment$NotesItemClickListener;-><init>(Lme/writeily/NotesFragment;Lme/writeily/NotesFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0xa

    aput-boolean v7, v6, v0

    .line 83
    iget-object v0, p0, Lme/writeily/NotesFragment;->filesListView:Landroid/widget/ListView;

    new-instance v1, Lme/writeily/NotesFragment$ActionModeCallback;

    invoke-direct {v1, p0, v8}, Lme/writeily/NotesFragment$ActionModeCallback;-><init>(Lme/writeily/NotesFragment;Lme/writeily/NotesFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const/16 v0, 0xb

    aput-boolean v7, v6, v0

    .line 84
    iget-object v0, p0, Lme/writeily/NotesFragment;->filesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lme/writeily/NotesFragment;->simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0xc

    aput-boolean v7, v6, v0

    .line 85
    invoke-direct {p0}, Lme/writeily/NotesFragment;->getRootFolderFromPrefsOrDefault()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/NotesFragment;->rootDir:Ljava/io/File;

    .line 87
    iget-object v0, p0, Lme/writeily/NotesFragment;->layoutView:Landroid/view/View;

    const/16 v1, 0xd

    aput-boolean v7, v6, v1

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    invoke-direct {p0}, Lme/writeily/NotesFragment;->saveCurrentFolder()V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    .line 110
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 111
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 92
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v2

    iput-object v2, p0, Lme/writeily/NotesFragment;->writeilySingleton:Lme/writeily/model/WriteilySingleton;

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    .line 93
    invoke-direct {p0}, Lme/writeily/NotesFragment;->getRootFolderFromPrefsOrDefault()Ljava/io/File;

    move-result-object v0

    .line 94
    .local v0, "possiblyNewRootDir":Ljava/io/File;
    iget-object v2, p0, Lme/writeily/NotesFragment;->rootDir:Ljava/io/File;

    if-ne v0, v2, :cond_0

    const/16 v2, 0xf

    aput-boolean v3, v1, v2

    .line 98
    :goto_0
    invoke-direct {p0}, Lme/writeily/NotesFragment;->retrieveCurrentFolder()V

    const/16 v2, 0x11

    aput-boolean v3, v1, v2

    .line 99
    invoke-virtual {p0}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/writeily/NotesFragment;->listFilesInDirectory(Ljava/io/File;)V

    const/16 v2, 0x12

    aput-boolean v3, v1, v2

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 101
    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    return-void

    .line 95
    :cond_0
    iput-object v0, p0, Lme/writeily/NotesFragment;->rootDir:Ljava/io/File;

    .line 96
    iput-object v0, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public onRooDir()Z
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 250
    iget-object v1, p0, Lme/writeily/NotesFragment;->writeilySingleton:Lme/writeily/model/WriteilySingleton;

    iget-object v2, p0, Lme/writeily/NotesFragment;->currentDir:Ljava/io/File;

    iget-object v3, p0, Lme/writeily/NotesFragment;->rootDir:Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lme/writeily/model/WriteilySingleton;->isRootDir(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const/16 v2, 0x63

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public search(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NotesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 233
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x5a

    aput-boolean v2, v0, v1

    .line 237
    :goto_0
    const/16 v1, 0x5e

    aput-boolean v2, v0, v1

    return-void

    .line 233
    :cond_0
    const/16 v1, 0x5b

    aput-boolean v2, v0, v1

    .line 234
    iget-object v1, p0, Lme/writeily/NotesFragment;->filesAdapter:Lme/writeily/adapter/NotesAdapter;

    invoke-virtual {v1}, Lme/writeily/adapter/NotesAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    const/16 v1, 0x5c

    aput-boolean v2, v0, v1

    .line 235
    iget-object v1, p0, Lme/writeily/NotesFragment;->simpleSectionAdapter:Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;

    invoke-virtual {v1}, Lcom/mobsandgeeks/adapters/SimpleSectionAdapter;->notifyDataSetChanged()V

    const/16 v1, 0x5d

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
