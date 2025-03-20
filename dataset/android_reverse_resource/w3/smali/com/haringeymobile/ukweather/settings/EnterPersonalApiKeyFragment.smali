.class public Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;
.super Landroid/app/DialogFragment;
.source "EnterPersonalApiKeyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private listener:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x303326af24f8671L

    const-string v2, "com/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;)Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->listener:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 30
    check-cast p1, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;

    iput-object p1, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->listener:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;

    .line 31
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v7, v0, v2

    .line 38
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    aput-boolean v7, v0, v3

    .line 39
    invoke-static {v1}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getPersonalApiKeyFromSharedPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-boolean v7, v0, v4

    .line 40
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    aput-boolean v7, v0, v3

    .line 44
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x8

    aput-boolean v7, v0, v4

    .line 45
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f020089

    const/16 v5, 0x9

    aput-boolean v7, v0, v5

    .line 46
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060040

    const/16 v5, 0xa

    aput-boolean v7, v0, v5

    .line 47
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;

    invoke-direct {v5, p0}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$2;-><init>(Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;)V

    const/16 v6, 0xb

    aput-boolean v7, v0, v6

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060023

    new-instance v5, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$1;-><init>(Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;Landroid/widget/EditText;Landroid/app/Activity;)V

    const/16 v1, 0xc

    aput-boolean v7, v0, v1

    .line 58
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v7, v0, v2

    .line 68
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 44
    const/16 v2, 0xe

    aput-boolean v7, v0, v2

    return-object v1

    .line 40
    :cond_0
    const/4 v4, 0x6

    aput-boolean v7, v0, v4

    .line 41
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    const/4 v3, 0x7

    aput-boolean v7, v0, v3

    goto :goto_0
.end method

.method public onDetach()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 73
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 74
    iput-object v0, p0, Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment;->listener:Lcom/haringeymobile/ukweather/settings/EnterPersonalApiKeyFragment$Listener;

    const/16 v0, 0xf

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 77
    const-class v0, Landroid/app/Fragment;

    const-string v2, "mChildFragmentManager"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    const/16 v0, 0x16

    aput-boolean v4, v1, v0

    return-void

    .line 80
    :catch_0
    move-exception v0

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 81
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    throw v2

    .line 82
    :catch_1
    move-exception v0

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    .line 83
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, 0x15

    aput-boolean v4, v1, v0

    throw v2
.end method
