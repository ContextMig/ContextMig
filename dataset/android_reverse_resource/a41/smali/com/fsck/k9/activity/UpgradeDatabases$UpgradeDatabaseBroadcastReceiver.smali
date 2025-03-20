.class Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeDatabases.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/UpgradeDatabases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpgradeDatabaseBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/UpgradeDatabases;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/UpgradeDatabases;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/UpgradeDatabases;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;->this$0:Lcom/fsck/k9/activity/UpgradeDatabases;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "action":Ljava/lang/String;
    const-string v5, "DatabaseUpgradeService.upgradeProgress"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    const-string v5, "account_uuid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "accountUuid":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;->this$0:Lcom/fsck/k9/activity/UpgradeDatabases;

    invoke-static {v5}, Lcom/fsck/k9/activity/UpgradeDatabases;->access$000(Lcom/fsck/k9/activity/UpgradeDatabases;)Lcom/fsck/k9/Preferences;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 207
    .local v0, "account":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_0

    .line 208
    iget-object v5, p0, Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;->this$0:Lcom/fsck/k9/activity/UpgradeDatabases;

    const v6, 0x7f0703b7

    invoke-virtual {v5, v6}, Lcom/fsck/k9/activity/UpgradeDatabases;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "formatString":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "upgradeStatus":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;->this$0:Lcom/fsck/k9/activity/UpgradeDatabases;

    invoke-static {v5}, Lcom/fsck/k9/activity/UpgradeDatabases;->access$100(Lcom/fsck/k9/activity/UpgradeDatabases;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "accountUuid":Ljava/lang/String;
    .end local v3    # "formatString":Ljava/lang/String;
    .end local v4    # "upgradeStatus":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v5, "DatabaseUpgradeService.upgradeComplete"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/fsck/k9/activity/UpgradeDatabases$UpgradeDatabaseBroadcastReceiver;->this$0:Lcom/fsck/k9/activity/UpgradeDatabases;

    invoke-static {v5}, Lcom/fsck/k9/activity/UpgradeDatabases;->access$200(Lcom/fsck/k9/activity/UpgradeDatabases;)V

    goto :goto_0
.end method
