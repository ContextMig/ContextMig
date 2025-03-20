.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;
.super Landroid/content/BroadcastReceiver;
.source "PreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

.field final synthetic val$currencyPreference:Landroid/preference/Preference;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x40956e0c34a5c1a3L    # -0.0032434236152949895

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$14"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/Preference;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->$jacocoInit()[Z

    move-result-object v0

    .line 411
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->val$currencyPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->$jacocoInit()[Z

    move-result-object v2

    .line 415
    const-string v1, "currency.selected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v6, v2, v6

    .line 422
    :goto_0
    const-string v1, "iabStatusChanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 426
    const-string v1, "iabKey"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    .line 427
    .local v0, "status":Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
    sget-object v1, Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;->PREMIUM:Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    const/16 v1, 0xb

    aput-boolean v6, v2, v1

    .line 454
    :goto_2
    const/16 v1, 0x16

    aput-boolean v6, v2, v1

    return-void

    .line 415
    .end local v0    # "status":Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$000(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aput-boolean v6, v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    aput-boolean v6, v2, v1

    .line 417
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->val$currencyPreference:Landroid/preference/Preference;

    invoke-static {v1, v3}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$300(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/Preference;)V

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    .line 419
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$000(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;->dismiss()V

    const/4 v1, 0x5

    aput-boolean v6, v2, v1

    .line 420
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$002(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    goto :goto_2

    .line 427
    .restart local v0    # "status":Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
    :cond_2
    const/16 v1, 0x9

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v2, v1

    .line 429
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$400(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    const/16 v1, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 432
    :catch_0
    move-exception v1

    const/16 v3, 0xc

    aput-boolean v6, v2, v3

    .line 434
    const-string v3, "Error while receiving INTENT_IAB_STATUS_CHANGED intent"

    invoke-static {v3, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    const/16 v1, 0xd

    aput-boolean v6, v2, v1

    goto :goto_2

    .line 437
    .end local v0    # "status":Lcom/benoitletondor/easybudgetapp/PremiumCheckStatus;
    :cond_3
    const-string v1, "user.ispremium"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xe

    aput-boolean v6, v2, v1

    goto :goto_2

    :cond_4
    const/16 v1, 0xf

    aput-boolean v6, v2, v1

    .line 439
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08004f

    const/16 v4, 0x10

    aput-boolean v6, v2, v4

    .line 440
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f08004e

    const/16 v4, 0x11

    aput-boolean v6, v2, v4

    .line 441
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f080060

    new-instance v4, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14$1;

    invoke-direct {v4, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;)V

    const/16 v5, 0x12

    aput-boolean v6, v2, v5

    .line 442
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v3, 0x13

    aput-boolean v6, v2, v3

    .line 450
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v1, 0x14

    aput-boolean v6, v2, v1

    .line 452
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$400(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    const/16 v1, 0x15

    aput-boolean v6, v2, v1

    goto/16 :goto_2
.end method
