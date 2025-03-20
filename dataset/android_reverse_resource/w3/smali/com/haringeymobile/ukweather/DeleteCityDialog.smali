.class public Lcom/haringeymobile/ukweather/DeleteCityDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteCityDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final CITY_NAME:Ljava/lang/String; = "city name"


# instance fields
.field private onDialogButtonClickedListener:Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;

.field private parentActivity:Landroid/app/Activity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x11ee9036738dbc57L    # -1.5757247052378335E222

    const-string v2, "com/haringeymobile/ukweather/DeleteCityDialog"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/DeleteCityDialog;)Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->onDialogButtonClickedListener:Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 100
    new-instance v0, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;

    invoke-direct {v0, p0}, Lcom/haringeymobile/ukweather/DeleteCityDialog$1;-><init>(Lcom/haringeymobile/ukweather/DeleteCityDialog;)V

    .line 109
    .local v0, "dialogOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method private getDialogTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x15

    aput-boolean v5, v0, v2

    .line 90
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "city name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    aput-boolean v5, v0, v3

    .line 91
    const v3, 0x7f06003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/haringeymobile/ukweather/DeleteCityDialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    new-instance v1, Lcom/haringeymobile/ukweather/DeleteCityDialog;

    invoke-direct {v1}, Lcom/haringeymobile/ukweather/DeleteCityDialog;-><init>()V

    aput-boolean v4, v0, v4

    .line 44
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 45
    const-string v3, "city id"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 46
    const-string v3, "city name"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    .line 47
    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->setArguments(Landroid/os/Bundle;)V

    .line 48
    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoInit()[Z

    move-result-object v2

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    .line 54
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->parentActivity:Landroid/app/Activity;

    const/4 v1, 0x7

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->onDialogButtonClickedListener:Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    return-void

    .line 57
    :catch_0
    move-exception v1

    const/16 v1, 0x8

    aput-boolean v5, v2, v1

    .line 58
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnDialogButtonClickedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->getDialogTitle()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v7, v0, v2

    .line 73
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    const/16 v3, 0xd

    aput-boolean v7, v0, v3

    .line 74
    iget-object v3, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    const/16 v5, 0xe

    aput-boolean v7, v0, v5

    .line 75
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    aput-boolean v7, v0, v4

    .line 76
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->parentActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020087

    const/16 v6, 0x10

    aput-boolean v7, v0, v6

    .line 77
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/16 v5, 0x11

    aput-boolean v7, v0, v5

    .line 78
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v4, 0x12

    aput-boolean v7, v0, v4

    .line 79
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x13

    aput-boolean v7, v0, v2

    .line 80
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 76
    const/16 v2, 0x14

    aput-boolean v7, v0, v2

    return-object v1
.end method

.method public onDetach()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 66
    iput-object v1, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->parentActivity:Landroid/app/Activity;

    .line 67
    iput-object v1, p0, Lcom/haringeymobile/ukweather/DeleteCityDialog;->onDialogButtonClickedListener:Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;

    .line 68
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
