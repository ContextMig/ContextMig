.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

.field final synthetic val$limitEditText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x78003ddf9f2673feL

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->val$limitEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->$jacocoInit()[Z

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->val$limitEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-boolean v6, v2, v6

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aput-boolean v6, v2, v3

    .line 243
    .local v0, "limitString":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 246
    .local v1, "newLimit":I
    if-gtz v1, :cond_1

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 248
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "limit should be > 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v1    # "newLimit":I
    :catch_0
    move-exception v3

    const/16 v3, 0x8

    aput-boolean v6, v2, v3

    .line 256
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    iget-object v4, v4, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080032

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    iget-object v4, v4, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080060

    new-instance v5, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2$1;

    invoke-direct {v5, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const/16 v4, 0x9

    aput-boolean v6, v2, v4

    .line 264
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v3, 0xa

    aput-boolean v6, v2, v3

    .line 266
    :goto_1
    const/16 v3, 0xb

    aput-boolean v6, v2, v3

    return-void

    .line 238
    .end local v0    # "limitString":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    .restart local v0    # "limitString":Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v2, v3

    goto :goto_0

    .line 251
    .restart local v1    # "newLimit":I
    :cond_1
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v3

    const-string v4, "low_money_warning_amount"

    invoke-virtual {v3, v4, v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 252
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    iget-object v3, v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$2;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    iget-object v4, v4, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->val$limitWarningPreference:Landroid/preference/Preference;

    invoke-static {v3, v4}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->access$100(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/Preference;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    const/4 v3, 0x7

    aput-boolean v6, v2, v3

    goto :goto_1
.end method
