.class public Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;
.super Landroid/app/DialogFragment;
.source "DropboxAnnouncementDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final FRAGMENT_TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1ecc9ace662d007bL

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    const-class v1, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->FRAGMENT_TAG:Ljava/lang/String;

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 11
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

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;

    invoke-direct {v1}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;-><init>()V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 24
    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 25
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/DropboxAnnouncementDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05002b

    aput-boolean v5, v0, v5

    .line 17
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050027

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v5, v0, v2

    .line 19
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 16
    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    return-object v1
.end method
