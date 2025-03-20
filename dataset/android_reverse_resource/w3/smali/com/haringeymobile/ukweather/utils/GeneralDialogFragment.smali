.class public Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "GeneralDialogFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x67a74aa5bbcfdaefL

    const-string v2, "com/haringeymobile/ukweather/utils/GeneralDialogFragment"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    new-instance v1, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment$1;-><init>(Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;)V

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    new-instance v1, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;

    invoke-direct {v1}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;-><init>()V

    aput-boolean v4, v0, v4

    .line 28
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 29
    const-string v3, "title"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 30
    const-string v3, "message"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    .line 31
    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 39
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-boolean v6, v0, v3

    .line 40
    const-string v3, "message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-boolean v6, v0, v3

    .line 42
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x9

    aput-boolean v6, v0, v4

    .line 43
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    const/16 v5, 0xa

    aput-boolean v6, v0, v5

    .line 44
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    if-nez v1, :cond_0

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    .line 48
    :goto_0
    const v1, 0x104000a

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    .line 49
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v6, v0, v2

    return-object v1

    .line 45
    :cond_0
    const/16 v2, 0xc

    aput-boolean v6, v0, v2

    .line 46
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
