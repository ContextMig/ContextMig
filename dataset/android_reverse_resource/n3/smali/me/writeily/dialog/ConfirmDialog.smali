.class public Lme/writeily/dialog/ConfirmDialog;
.super Landroid/app/DialogFragment;
.source "ConfirmDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/ConfirmDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1a83ae4d1c347febL    # 5.928663172005754E-181

    const-string v2, "me/writeily/dialog/ConfirmDialog"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/ConfirmDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/ConfirmDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getTitleForTag(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/dialog/ConfirmDialog;->$jacocoInit()[Z

    move-result-object v2

    .line 67
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v3, 0x10

    aput-boolean v1, v2, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 73
    const v0, 0x7f060029

    const/16 v3, 0x16

    aput-boolean v1, v2, v3

    :goto_1
    return v0

    .line 67
    :sswitch_0
    const-string v3, "confirm_overwrite_dialog_tag"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x11

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x12

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_1
    const-string v3, "confirm_delete_dialog_tag"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x13

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 69
    :pswitch_0
    const v0, 0x7f06002a

    const/16 v3, 0x15

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 67
    :sswitch_data_0
    .sparse-switch
        0xe37b576 -> :sswitch_0
        0x4332cf78 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/dialog/ConfirmDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f0600b4

    invoke-virtual {p0, v3}, Lme/writeily/dialog/ConfirmDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-boolean v5, v1, v3

    .line 37
    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lme/writeily/dialog/ConfirmDialog;->getTitleForTag(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    aput-boolean v5, v1, v4

    .line 39
    const v4, 0x7f06007b

    invoke-virtual {p0, v4}, Lme/writeily/dialog/ConfirmDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f080011

    invoke-direct {v0, v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const/16 v2, 0xa

    aput-boolean v5, v1, v2

    .line 46
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0xc

    aput-boolean v5, v1, v2

    .line 48
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lme/writeily/dialog/ConfirmDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lme/writeily/dialog/ConfirmDialog$1;

    invoke-direct {v3, p0}, Lme/writeily/dialog/ConfirmDialog$1;-><init>(Lme/writeily/dialog/ConfirmDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0xd

    aput-boolean v5, v1, v2

    .line 55
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lme/writeily/dialog/ConfirmDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lme/writeily/dialog/ConfirmDialog$2;

    invoke-direct {v3, p0}, Lme/writeily/dialog/ConfirmDialog$2;-><init>(Lme/writeily/dialog/ConfirmDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0xe

    aput-boolean v5, v1, v2

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    const/16 v3, 0xf

    aput-boolean v5, v1, v3

    return-object v2

    .line 42
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f080014

    invoke-direct {v0, v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/16 v2, 0xb

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method public sendBroadcast()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/dialog/ConfirmDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    aput-boolean v3, v0, v3

    .line 25
    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 26
    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 29
    :goto_0
    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void

    .line 26
    :cond_0
    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 27
    invoke-virtual {p0}, Lme/writeily/dialog/ConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    goto :goto_0
.end method
