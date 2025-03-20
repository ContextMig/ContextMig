.class public Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;
.super Landroid/app/DialogFragment;
.source "AboutDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final FRAGMENT_TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x288f483fcb31b78eL

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/AboutDialog"

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    const-class v1, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->FRAGMENT_TAG:Ljava/lang/String;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->openGooglePlay()V

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->sendFeedback()V

    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getTextForFeedback(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f050003

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/iliakplv/notes/utils/Utils;->getDeviceInformation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private openGooglePlay()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    aput-boolean v5, v0, v4

    .line 67
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    aput-boolean v5, v0, v2

    .line 68
    invoke-virtual {p0, v1}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->startActivity(Landroid/content/Intent;)V

    .line 69
    const/16 v1, 0x12

    aput-boolean v5, v0, v1

    return-void
.end method

.method private sendFeedback()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto"

    const-string v5, "iliakplv@gmail.com"

    const/4 v6, 0x0

    const/16 v7, 0x13

    aput-boolean v8, v1, v7

    .line 74
    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x14

    aput-boolean v8, v1, v3

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f05001b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " feedback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x15

    aput-boolean v8, v1, v4

    .line 76
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x16

    aput-boolean v8, v1, v3

    .line 77
    const-string v3, "android.intent.extra.TEXT"

    invoke-direct {p0, v0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->getTextForFeedback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x17

    aput-boolean v8, v1, v3

    .line 78
    const v3, 0x7f050002

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->startActivity(Landroid/content/Intent;)V

    .line 79
    const/16 v2, 0x18

    aput-boolean v8, v1, v2

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;

    invoke-direct {v1}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;-><init>()V

    const/16 v2, 0x1a

    aput-boolean v3, v0, v2

    .line 87
    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 88
    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v0, 0x6

    aput-boolean v8, v1, v0

    .line 33
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v3, 0x7

    aput-boolean v8, v1, v3

    .line 34
    const/high16 v3, 0x7f030000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/16 v0, 0x8

    aput-boolean v8, v1, v0

    .line 37
    invoke-static {}, Lcom/iliakplv/notes/utils/Utils;->getVersionName()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x9

    aput-boolean v8, v1, v0

    .line 38
    const/high16 v0, 0x7f0c0000

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f050006

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/16 v4, 0xa

    aput-boolean v8, v1, v4

    .line 39
    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xb

    aput-boolean v8, v1, v0

    .line 42
    const v0, 0x7f0c0002

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;

    invoke-direct {v2, p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xc

    aput-boolean v8, v1, v0

    .line 51
    const v0, 0x7f0c0003

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$2;

    invoke-direct {v2, p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$2;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xd

    aput-boolean v8, v1, v0

    .line 59
    const v0, 0x7f0c0004

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0xe

    aput-boolean v8, v1, v2

    .line 60
    invoke-static {v0, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 62
    const/16 v0, 0xf

    aput-boolean v8, v1, v0

    return-object v3
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05001b

    aput-boolean v5, v0, v5

    .line 25
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 26
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->createView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050025

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    .line 28
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 24
    const/4 v2, 0x5

    aput-boolean v5, v0, v2

    return-object v1
.end method
