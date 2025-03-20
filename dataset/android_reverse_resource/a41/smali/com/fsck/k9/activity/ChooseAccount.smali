.class public Lcom/fsck/k9/activity/ChooseAccount;
.super Lcom/fsck/k9/activity/AccountList;
.source "ChooseAccount.java"


# static fields
.field public static final EXTRA_ACCOUNT_UUID:Ljava/lang/String; = "com.fsck.k9.ChooseAccount_account_uuid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fsck/k9/activity/AccountList;-><init>()V

    return-void
.end method


# virtual methods
.method protected displaySpecialAccounts()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method protected onAccountSelected(Lcom/fsck/k9/BaseAccount;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.ChooseAccount_account_uuid"

    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/activity/ChooseAccount;->setResult(ILandroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseAccount;->finish()V

    .line 22
    return-void
.end method
