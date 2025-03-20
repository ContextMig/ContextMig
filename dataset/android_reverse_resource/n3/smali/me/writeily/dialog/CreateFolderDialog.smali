.class public Lme/writeily/dialog/CreateFolderDialog;
.super Landroid/app/DialogFragment;
.source "CreateFolderDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private currentDir:Ljava/lang/String;

.field private folderNameEditText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/CreateFolderDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2d862708d990e82aL    # 2.174971777191793E-89

    const-string v2, "me/writeily/dialog/CreateFolderDialog"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/CreateFolderDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/CreateFolderDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lme/writeily/dialog/CreateFolderDialog;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/dialog/CreateFolderDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iget-object v1, p0, Lme/writeily/dialog/CreateFolderDialog;->folderNameEditText:Landroid/widget/EditText;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/dialog/CreateFolderDialog;->$jacocoInit()[Z

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v3, 0x5

    aput-boolean v6, v2, v3

    .line 39
    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "current_dir_folder_key"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lme/writeily/dialog/CreateFolderDialog;->currentDir:Ljava/lang/String;

    const/4 v3, 0x6

    aput-boolean v6, v2, v3

    .line 43
    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0600b4

    invoke-virtual {p0, v4}, Lme/writeily/dialog/CreateFolderDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-boolean v6, v2, v4

    .line 45
    const v4, 0x7f06007b

    invoke-virtual {p0, v4}, Lme/writeily/dialog/CreateFolderDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    aput-boolean v6, v2, v3

    .line 46
    const v3, 0x7f030027

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x9

    aput-boolean v6, v2, v3

    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080011

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const/16 v3, 0xa

    aput-boolean v6, v2, v3

    .line 53
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0xd

    aput-boolean v6, v2, v3

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0xe

    aput-boolean v6, v2, v1

    .line 56
    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06002b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lme/writeily/dialog/CreateFolderDialog$1;

    invoke-direct {v3, p0}, Lme/writeily/dialog/CreateFolderDialog$1;-><init>(Lme/writeily/dialog/CreateFolderDialog;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0xf

    aput-boolean v6, v2, v1

    .line 64
    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lme/writeily/dialog/CreateFolderDialog$2;

    invoke-direct {v3, p0}, Lme/writeily/dialog/CreateFolderDialog$2;-><init>(Lme/writeily/dialog/CreateFolderDialog;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0x10

    aput-boolean v6, v2, v1

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    const/16 v1, 0x11

    aput-boolean v6, v2, v1

    .line 72
    const v1, 0x7f0c007a

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/writeily/dialog/CreateFolderDialog;->folderNameEditText:Landroid/widget/EditText;

    .line 74
    const/16 v1, 0x12

    aput-boolean v6, v2, v1

    return-object v3

    .line 49
    :cond_0
    const v3, 0x7f030026

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0xb

    aput-boolean v6, v2, v3

    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080014

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/16 v3, 0xc

    aput-boolean v6, v2, v3

    goto :goto_0
.end method

.method public sendBroadcast(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/dialog/CreateFolderDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    aput-boolean v5, v0, v5

    .line 30
    const-string v2, "create_folder_dialog_tag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 31
    const-string v2, "folder_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lme/writeily/dialog/CreateFolderDialog;->currentDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v5, v0, v2

    .line 32
    invoke-virtual {p0}, Lme/writeily/dialog/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void
.end method
