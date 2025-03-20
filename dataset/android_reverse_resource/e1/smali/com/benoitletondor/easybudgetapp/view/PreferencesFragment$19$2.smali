.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;

.field final synthetic val$voucherEditText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6de63f7026c2bde9L    # -1.781055494325199E-221

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->$jacocoInit()[Z

    move-result-object v0

    .line 596
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->val$voucherEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .prologue
    const v8, 0x7f080060

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->$jacocoInit()[Z

    move-result-object v1

    .line 600
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    aput-boolean v7, v1, v7

    .line 602
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->val$voucherEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    aput-boolean v7, v1, v0

    .line 603
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    aput-boolean v7, v1, v0

    .line 605
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800dc

    const/4 v3, 0x4

    aput-boolean v7, v1, v3

    .line 606
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0800db

    const/4 v3, 0x5

    aput-boolean v7, v1, v3

    .line 607
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2$1;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;)V

    const/4 v3, 0x6

    aput-boolean v7, v1, v3

    .line 608
    invoke-virtual {v0, v8, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v7, v1, v2

    .line 616
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 618
    const/16 v0, 0x8

    aput-boolean v7, v1, v0

    .line 636
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;

    iget-object v0, v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/EasyBudget;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/benoitletondor/easybudgetapp/EasyBudget;->launchRedeemPromocodeFlow(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    aput-boolean v7, v1, v0

    .line 636
    :goto_1
    const/16 v0, 0x10

    aput-boolean v7, v1, v0

    goto :goto_0

    .line 621
    :cond_1
    const/16 v0, 0xa

    aput-boolean v7, v1, v0

    .line 623
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004d

    const/16 v3, 0xb

    aput-boolean v7, v1, v3

    .line 624
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;

    iget-object v2, v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    const/16 v3, 0xc

    aput-boolean v7, v1, v3

    .line 625
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08004c

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Error redeeming promo code"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2$2;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19$2;)V

    const/16 v3, 0xd

    aput-boolean v7, v1, v3

    .line 626
    invoke-virtual {v0, v8, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0xe

    aput-boolean v7, v1, v2

    .line 634
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v0, 0xf

    aput-boolean v7, v1, v0

    goto :goto_1
.end method
