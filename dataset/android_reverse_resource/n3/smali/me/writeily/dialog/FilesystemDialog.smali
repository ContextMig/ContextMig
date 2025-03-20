.class public Lme/writeily/dialog/FilesystemDialog;
.super Landroid/app/DialogFragment;
.source "FilesystemDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;,
        Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final EXTERNAL_STORAGE_PATH:Ljava/lang/String;


# instance fields
.field private currentDir:Ljava/io/File;

.field private emptyFolderTextView:Landroid/widget/TextView;

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private filesAdapter:Lme/writeily/adapter/FileAdapter;

.field private filesListView:Landroid/widget/ListView;

.field private isMovingFile:Z

.field private isSelectingFolder:Z

.field private isSelectingForWidget:Z

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private previousDirButton:Landroid/widget/Button;

.field private rootDir:Ljava/io/File;

.field private selectedPath:Ljava/lang/String;

.field private workingDirectoryText:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/FilesystemDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x24aa57534c2e6a64L    # -9.608469549594044E131

    const-string v2, "me/writeily/dialog/FilesystemDialog"

    const/16 v3, 0x6c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/FilesystemDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lme/writeily/dialog/FilesystemDialog;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lme/writeily/dialog/FilesystemDialog;)Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    const/16 v2, 0x63

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$002(Lme/writeily/dialog/FilesystemDialog;Ljava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iput-object p1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    const/16 v1, 0x66

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$100(Lme/writeily/dialog/FilesystemDialog;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->selectedPath:Ljava/lang/String;

    const/16 v2, 0x64

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lme/writeily/dialog/FilesystemDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iput-object p1, p0, Lme/writeily/dialog/FilesystemDialog;->selectedPath:Ljava/lang/String;

    const/16 v1, 0x67

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$400(Lme/writeily/dialog/FilesystemDialog;)Lme/writeily/adapter/FileAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    const/16 v2, 0x65

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$500(Lme/writeily/dialog/FilesystemDialog;Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lme/writeily/dialog/FilesystemDialog;->listFilesInDirectory(Ljava/io/File;)V

    const/16 v1, 0x68

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$600(Lme/writeily/dialog/FilesystemDialog;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lme/writeily/dialog/FilesystemDialog;->showCurrentDirectory(Ljava/lang/String;)V

    const/16 v1, 0x69

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$700(Lme/writeily/dialog/FilesystemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Lme/writeily/dialog/FilesystemDialog;->goToPreviousDir()V

    const/16 v1, 0x6a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private checkDirectoryStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 234
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v1

    const/16 v2, 0x55

    aput-boolean v4, v0, v2

    .line 236
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    iget-object v3, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lme/writeily/model/WriteilySingleton;->isRootDir(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x56

    aput-boolean v4, v0, v2

    .line 237
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->previousDirButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x57

    aput-boolean v4, v0, v2

    .line 243
    :goto_0
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lme/writeily/model/WriteilySingleton;->isDirectoryEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x59

    aput-boolean v4, v0, v1

    .line 244
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->emptyFolderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x5a

    aput-boolean v4, v0, v1

    .line 245
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->emptyFolderTextView:Landroid/widget/TextView;

    const v2, 0x7f060033

    invoke-virtual {p0, v2}, Lme/writeily/dialog/FilesystemDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x5b

    aput-boolean v4, v0, v1

    .line 249
    :goto_1
    const/16 v1, 0x5d

    aput-boolean v4, v0, v1

    return-void

    .line 239
    :cond_0
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->previousDirButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x58

    aput-boolean v4, v0, v2

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->emptyFolderTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x5c

    aput-boolean v4, v0, v1

    goto :goto_1
.end method

.method private getRootFolderFromPrefsOrDefault()Ljava/io/File;
    .locals 5

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 174
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f0600b1

    invoke-virtual {p0, v3}, Lme/writeily/dialog/FilesystemDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lme/writeily/model/Constants;->DEFAULT_WRITEILY_STORAGE_FOLDER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private goToPreviousDir()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 221
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    if-nez v1, :cond_0

    const/16 v1, 0x4d

    aput-boolean v2, v0, v1

    .line 225
    :goto_0
    iget-boolean v1, p0, Lme/writeily/dialog/FilesystemDialog;->isMovingFile:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x50

    aput-boolean v2, v0, v1

    .line 226
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lme/writeily/dialog/FilesystemDialog;->showCurrentDirectory(Ljava/lang/String;)V

    const/16 v1, 0x51

    aput-boolean v2, v0, v1

    .line 227
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lme/writeily/dialog/FilesystemDialog;->listDirectories(Ljava/io/File;)V

    const/16 v1, 0x52

    aput-boolean v2, v0, v1

    .line 231
    :goto_1
    const/16 v1, 0x54

    aput-boolean v2, v0, v1

    return-void

    .line 221
    :cond_0
    const/16 v1, 0x4e

    aput-boolean v2, v0, v1

    .line 222
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    const/16 v1, 0x4f

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lme/writeily/dialog/FilesystemDialog;->listFilesInDirectory(Ljava/io/File;)V

    const/16 v1, 0x53

    aput-boolean v2, v0, v1

    goto :goto_1
.end method

.method private listDirectories(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    const/16 v0, 0x44

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 206
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v0

    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Lme/writeily/model/WriteilySingleton;->addDirectories(Ljava/io/File;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/16 v0, 0x45

    aput-boolean v4, v1, v0

    .line 212
    :goto_0
    iget-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    if-nez v0, :cond_0

    const/16 v0, 0x48

    aput-boolean v4, v1, v0

    .line 217
    :goto_1
    invoke-direct {p0}, Lme/writeily/dialog/FilesystemDialog;->checkDirectoryStatus()V

    .line 218
    const/16 v0, 0x4c

    aput-boolean v4, v1, v0

    return-void

    .line 207
    :catch_0
    move-exception v0

    const/16 v2, 0x46

    aput-boolean v4, v1, v2

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x47

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 212
    :cond_0
    const/16 v0, 0x49

    aput-boolean v4, v1, v0

    .line 213
    new-instance v0, Lme/writeily/adapter/FileAdapter;

    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lme/writeily/adapter/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    const/16 v0, 0x4a

    aput-boolean v4, v1, v0

    .line 214
    iget-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->filesListView:Landroid/widget/ListView;

    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x4b

    aput-boolean v4, v1, v0

    goto :goto_1
.end method

.method private listFilesInDirectory(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    const/16 v0, 0x3b

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 187
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v0

    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Lme/writeily/model/WriteilySingleton;->addFilesFromDirectory(Ljava/io/File;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/16 v0, 0x3c

    aput-boolean v4, v1, v0

    .line 193
    :goto_0
    iget-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    if-nez v0, :cond_0

    const/16 v0, 0x3f

    aput-boolean v4, v1, v0

    .line 198
    :goto_1
    invoke-direct {p0}, Lme/writeily/dialog/FilesystemDialog;->checkDirectoryStatus()V

    .line 199
    const/16 v0, 0x43

    aput-boolean v4, v1, v0

    return-void

    .line 188
    :catch_0
    move-exception v0

    const/16 v2, 0x3d

    aput-boolean v4, v1, v2

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x3e

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 193
    :cond_0
    const/16 v0, 0x40

    aput-boolean v4, v1, v0

    .line 194
    new-instance v0, Lme/writeily/adapter/FileAdapter;

    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lme/writeily/adapter/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    const/16 v0, 0x41

    aput-boolean v4, v1, v0

    .line 195
    iget-object v0, p0, Lme/writeily/dialog/FilesystemDialog;->filesListView:Landroid/widget/ListView;

    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x42

    aput-boolean v4, v1, v0

    goto :goto_1
.end method

.method private showCurrentDirectory(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-boolean v6, v0, v2

    .line 179
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog;->workingDirectoryText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/16 v1, 0x3a

    aput-boolean v6, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/16 v1, 0xb

    aput-boolean v6, v2, v1

    .line 74
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v4, 0x7f0600b4

    invoke-virtual {p0, v4}, Lme/writeily/dialog/FilesystemDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lme/writeily/model/Constants;->DEFAULT_WRITEILY_STORAGE_FOLDER:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    aput-boolean v6, v2, v4

    .line 76
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FILESYSTEM_FOLDER_ACCESS_TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lme/writeily/dialog/FilesystemDialog;->isMovingFile:Z

    const/16 v4, 0xd

    aput-boolean v6, v2, v4

    .line 77
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FILESYSTEM_SELECT_FOLDER_ACCESS_TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lme/writeily/dialog/FilesystemDialog;->isSelectingFolder:Z

    const/16 v4, 0xe

    aput-boolean v6, v2, v4

    .line 78
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FILESYSTEM_SELECT_FOLDER_FOR_WIDGET_ACCESS_TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lme/writeily/dialog/FilesystemDialog;->isSelectingForWidget:Z

    const/16 v4, 0xf

    aput-boolean v6, v2, v4

    .line 83
    const v4, 0x7f06007b

    invoke-virtual {p0, v4}, Lme/writeily/dialog/FilesystemDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    aput-boolean v6, v2, v1

    .line 84
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080011

    invoke-direct {v1, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/16 v4, 0x11

    aput-boolean v6, v2, v4

    .line 85
    const v4, 0x7f030025

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "dialogView":Landroid/view/View;
    const/16 v3, 0x12

    aput-boolean v6, v2, v3

    .line 91
    .end local v0    # "dialogView":Landroid/view/View;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-boolean v3, p0, Lme/writeily/dialog/FilesystemDialog;->isSelectingFolder:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x15

    aput-boolean v6, v2, v3

    .line 94
    :goto_1
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x17

    aput-boolean v6, v2, v3

    .line 95
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lme/writeily/dialog/FilesystemDialog$1;

    invoke-direct {v4, p0}, Lme/writeily/dialog/FilesystemDialog$1;-><init>(Lme/writeily/dialog/FilesystemDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x18

    aput-boolean v6, v2, v3

    .line 123
    :goto_2
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lme/writeily/dialog/FilesystemDialog$4;

    invoke-direct {v4, p0}, Lme/writeily/dialog/FilesystemDialog$4;-><init>(Lme/writeily/dialog/FilesystemDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x1e

    aput-boolean v6, v2, v3

    .line 130
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    const/16 v1, 0x1f

    aput-boolean v6, v2, v1

    .line 131
    const v1, 0x7f0c0076

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->emptyFolderTextView:Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    aput-boolean v6, v2, v1

    .line 137
    :goto_3
    const v1, 0x7f0c0077

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->workingDirectoryText:Landroid/widget/TextView;

    const/16 v1, 0x23

    aput-boolean v6, v2, v1

    .line 138
    const v1, 0x7f0c0079

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->filesListView:Landroid/widget/ListView;

    const/16 v1, 0x24

    aput-boolean v6, v2, v1

    .line 139
    new-instance v1, Lme/writeily/adapter/FileAdapter;

    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    invoke-direct {v1, v4, v5}, Lme/writeily/adapter/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    const/16 v1, 0x25

    aput-boolean v6, v2, v1

    .line 141
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->filesListView:Landroid/widget/ListView;

    new-instance v4, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;

    invoke-direct {v4, p0, v7}, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;-><init>(Lme/writeily/dialog/FilesystemDialog;Lme/writeily/dialog/FilesystemDialog$1;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v1, 0x26

    aput-boolean v6, v2, v1

    .line 142
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->filesListView:Landroid/widget/ListView;

    iget-object v4, p0, Lme/writeily/dialog/FilesystemDialog;->filesAdapter:Lme/writeily/adapter/FileAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0x27

    aput-boolean v6, v2, v1

    .line 145
    const v1, 0x7f0c0078

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->previousDirButton:Landroid/widget/Button;

    const/16 v1, 0x28

    aput-boolean v6, v2, v1

    .line 146
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->previousDirButton:Landroid/widget/Button;

    new-instance v4, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;

    invoke-direct {v4, p0, v7}, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;-><init>(Lme/writeily/dialog/FilesystemDialog;Lme/writeily/dialog/FilesystemDialog$1;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const/16 v1, 0x29

    aput-boolean v6, v2, v1

    return-object v3

    .line 87
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080014

    invoke-direct {v1, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/16 v4, 0x13

    aput-boolean v6, v2, v4

    .line 88
    const v4, 0x7f030024

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x14

    aput-boolean v6, v2, v3

    goto/16 :goto_0

    .line 93
    :cond_1
    iget-boolean v3, p0, Lme/writeily/dialog/FilesystemDialog;->isSelectingForWidget:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x16

    aput-boolean v6, v2, v3

    goto/16 :goto_1

    .line 101
    :cond_2
    iget-boolean v3, p0, Lme/writeily/dialog/FilesystemDialog;->isMovingFile:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x19

    aput-boolean v6, v2, v3

    .line 102
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x1a

    aput-boolean v6, v2, v3

    .line 103
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lme/writeily/dialog/FilesystemDialog$2;

    invoke-direct {v4, p0}, Lme/writeily/dialog/FilesystemDialog$2;-><init>(Lme/writeily/dialog/FilesystemDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x1b

    aput-boolean v6, v2, v3

    goto/16 :goto_2

    .line 110
    :cond_3
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x1c

    aput-boolean v6, v2, v3

    .line 111
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lme/writeily/dialog/FilesystemDialog$3;

    invoke-direct {v4, p0}, Lme/writeily/dialog/FilesystemDialog$3;-><init>(Lme/writeily/dialog/FilesystemDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x1d

    aput-boolean v6, v2, v3

    goto/16 :goto_2

    .line 133
    :cond_4
    const/16 v1, 0x21

    aput-boolean v6, v2, v1

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->files:Ljava/util/ArrayList;

    const/16 v1, 0x22

    aput-boolean v6, v2, v1

    goto/16 :goto_3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 281
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v1, :cond_0

    const/16 v1, 0x5f

    aput-boolean v2, v0, v1

    .line 284
    :goto_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 285
    const/16 v1, 0x62

    aput-boolean v2, v0, v1

    return-void

    .line 281
    :cond_0
    const/16 v1, 0x60

    aput-boolean v2, v0, v1

    .line 282
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    const/16 v1, 0x61

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 153
    iget-boolean v1, p0, Lme/writeily/dialog/FilesystemDialog;->isMovingFile:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x2a

    aput-boolean v3, v0, v1

    .line 154
    :goto_0
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->workingDirectoryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    .line 155
    invoke-direct {p0}, Lme/writeily/dialog/FilesystemDialog;->getRootFolderFromPrefsOrDefault()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    .line 156
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lme/writeily/dialog/FilesystemDialog;->listDirectories(Ljava/io/File;)V

    .line 157
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    .line 169
    :goto_1
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lme/writeily/dialog/FilesystemDialog;->showCurrentDirectory(Ljava/lang/String;)V

    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    .line 170
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 171
    const/16 v1, 0x37

    aput-boolean v3, v0, v1

    return-void

    .line 153
    :cond_0
    iget-boolean v1, p0, Lme/writeily/dialog/FilesystemDialog;->isSelectingForWidget:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2b

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v1, p0, Lme/writeily/dialog/FilesystemDialog;->isSelectingFolder:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    .line 159
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->workingDirectoryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    .line 160
    new-instance v1, Ljava/io/File;

    sget-object v2, Lme/writeily/dialog/FilesystemDialog;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    .line 161
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lme/writeily/dialog/FilesystemDialog;->listFilesInDirectory(Ljava/io/File;)V

    .line 162
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->currentDir:Ljava/io/File;

    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 164
    :cond_2
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->workingDirectoryText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x33

    aput-boolean v3, v0, v1

    .line 165
    new-instance v1, Ljava/io/File;

    sget-object v2, Lme/writeily/dialog/FilesystemDialog;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    .line 166
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog;->rootDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lme/writeily/dialog/FilesystemDialog;->listFilesInDirectory(Ljava/io/File;)V

    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method public sendBroadcast(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "broadcast":Landroid/content/Intent;
    iget-boolean v2, p0, Lme/writeily/dialog/FilesystemDialog;->isMovingFile:Z

    if-eqz v2, :cond_0

    aput-boolean v3, v1, v3

    .line 58
    const-string v2, "filesystem_move_dialog_tag"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 59
    const-string v2, "filesystem_file_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 68
    :goto_0
    invoke-virtual {p0}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    return-void

    .line 60
    :cond_0
    iget-boolean v2, p0, Lme/writeily/dialog/FilesystemDialog;->isSelectingFolder:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 61
    :goto_1
    const-string v2, "filesystem_select_folder_dialog_tag"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 62
    const-string v2, "filesystem_file_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 60
    :cond_1
    iget-boolean v2, p0, Lme/writeily/dialog/FilesystemDialog;->isSelectingForWidget:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 64
    :cond_2
    const-string v2, "filesystem_import_dialog_tag"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    .line 65
    const-string v2, "filesystem_file_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 252
    iput-object p1, p0, Lme/writeily/dialog/FilesystemDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 253
    const/16 v1, 0x5e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
