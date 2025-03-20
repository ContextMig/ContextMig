.class public Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;
.super Landroid/app/DialogFragment;
.source "VoiceSearchInstallDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final FRAGMENT_TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x11deaa5de2254685L    # -3.132984573144559E222

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    const-class v1, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->FRAGMENT_TAG:Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;

    invoke-direct {v1}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;-><init>()V

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    .line 36
    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 37
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05000d

    aput-boolean v5, v0, v5

    .line 21
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05003e

    const/4 v3, 0x2

    aput-boolean v5, v0, v3

    .line 22
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050024

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05003d

    new-instance v3, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;)V

    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v5, v0, v2

    .line 31
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 20
    const/4 v2, 0x6

    aput-boolean v5, v0, v2

    return-object v1
.end method
