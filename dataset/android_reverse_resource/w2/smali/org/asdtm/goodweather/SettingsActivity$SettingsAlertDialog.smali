.class public Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;
.super Landroid/app/DialogFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsAlertDialog"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ARG_MESSAGE_RES_ID:Ljava/lang/String; = "org.asdtm.goodweather.message_res_id"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x758b8ca5fd3630f5L

    const-string v2, "org/asdtm/goodweather/SettingsActivity$SettingsAlertDialog"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 373
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public newInstance(I)Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 378
    new-instance v1, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;

    invoke-direct {v1}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;-><init>()V

    aput-boolean v4, v0, v4

    .line 379
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 380
    const-string v3, "org.asdtm.goodweather.message_res_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 381
    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 382
    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "org.asdtm.goodweather.message_res_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 388
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x6

    aput-boolean v4, v0, v3

    .line 389
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 390
    const v1, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 391
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    return-object v1
.end method
