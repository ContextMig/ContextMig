.class public Lme/writeily/dialog/RenameDialog;
.super Landroid/app/DialogFragment;
.source "RenameDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private newNameField:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/RenameDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6c33eb93333b8e8L    # -9.955640704331399E275

    const-string v2, "me/writeily/dialog/RenameDialog"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/RenameDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/RenameDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lme/writeily/dialog/RenameDialog;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/dialog/RenameDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iget-object v1, p0, Lme/writeily/dialog/RenameDialog;->newNameField:Landroid/widget/EditText;

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lme/writeily/dialog/RenameDialog;Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/RenameDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0, p1, p2}, Lme/writeily/dialog/RenameDialog;->sendBroadcast(Ljava/lang/String;Ljava/io/File;)V

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/dialog/RenameDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    .line 74
    const-string v2, "RENAME_DIALOG_TAG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x13

    aput-boolean v4, v0, v2

    .line 75
    const-string v2, "RENAME_NEW_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x14

    aput-boolean v4, v0, v2

    .line 76
    const-string v2, "SOURCE_FILE"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x15

    aput-boolean v4, v0, v2

    .line 77
    invoke-virtual {p0}, Lme/writeily/dialog/RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    return-void
.end method

.method private setUpDialog(Ljava/io/File;Landroid/view/LayoutInflater;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/dialog/RenameDialog;->$jacocoInit()[Z

    move-result-object v2

    .line 42
    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Lme/writeily/dialog/RenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    aput-boolean v5, v2, v1

    .line 43
    const v1, 0x7f03003b

    invoke-virtual {p2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/writeily/dialog/RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080011

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const/16 v3, 0xa

    aput-boolean v5, v2, v3

    .line 50
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    invoke-virtual {p0}, Lme/writeily/dialog/RenameDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0xd

    aput-boolean v5, v2, v3

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0xe

    aput-boolean v5, v2, v3

    .line 53
    const v3, 0x7f0c0094

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    aput-boolean v5, v2, v1

    .line 55
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lme/writeily/dialog/RenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lme/writeily/dialog/RenameDialog$1;

    invoke-direct {v3, p0, p1}, Lme/writeily/dialog/RenameDialog$1;-><init>(Lme/writeily/dialog/RenameDialog;Ljava/io/File;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0x10

    aput-boolean v5, v2, v1

    .line 62
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lme/writeily/dialog/RenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lme/writeily/dialog/RenameDialog$2;

    invoke-direct {v3, p0}, Lme/writeily/dialog/RenameDialog$2;-><init>(Lme/writeily/dialog/RenameDialog;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    const/16 v1, 0x11

    aput-boolean v5, v2, v1

    return-object v0

    .line 46
    :cond_0
    const v1, 0x7f03003a

    invoke-virtual {p2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0xb

    aput-boolean v5, v2, v3

    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/writeily/dialog/RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080014

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/16 v3, 0xc

    aput-boolean v5, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/dialog/RenameDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lme/writeily/dialog/RenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SOURCE_FILE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-boolean v6, v1, v6

    .line 28
    invoke-virtual {p0}, Lme/writeily/dialog/RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v6, v1, v3

    .line 29
    invoke-virtual {p0}, Lme/writeily/dialog/RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0600b4

    invoke-virtual {p0, v4}, Lme/writeily/dialog/RenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-boolean v6, v1, v4

    .line 30
    invoke-direct {p0, v0, v2, v3}, Lme/writeily/dialog/RenameDialog;->setUpDialog(Ljava/io/File;Landroid/view/LayoutInflater;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    .line 31
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    aput-boolean v6, v1, v7

    .line 32
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    .line 34
    const v0, 0x7f0c0094

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lme/writeily/dialog/RenameDialog;->newNameField:Landroid/widget/EditText;

    .line 35
    const/4 v0, 0x7

    aput-boolean v6, v1, v0

    return-object v2
.end method
