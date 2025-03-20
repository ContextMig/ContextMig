.class Lcom/fsck/k9/remotecontrol/AccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountReceiver.java"


# instance fields
.field receptor:Lcom/fsck/k9/remotecontrol/K9AccountReceptor;


# direct methods
.method protected constructor <init>(Lcom/fsck/k9/remotecontrol/K9AccountReceptor;)V
    .locals 1
    .param p1, "nReceptor"    # Lcom/fsck/k9/remotecontrol/K9AccountReceptor;

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/remotecontrol/AccountReceiver;->receptor:Lcom/fsck/k9/remotecontrol/K9AccountReceptor;

    .line 13
    iput-object p1, p0, Lcom/fsck/k9/remotecontrol/AccountReceiver;->receptor:Lcom/fsck/k9/remotecontrol/K9AccountReceptor;

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 18
    const-string v1, "com.fsck.k9.K9RemoteControl.requestAccounts"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0, v3}, Lcom/fsck/k9/remotecontrol/AccountReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 20
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 21
    const-string v1, "Response bundle is empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 24
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/remotecontrol/AccountReceiver;->receptor:Lcom/fsck/k9/remotecontrol/K9AccountReceptor;

    const-string v2, "com.fsck.k9.K9RemoteControl.accountUuids"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.fsck.k9.K9RemoteControl.accountDescriptions"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fsck/k9/remotecontrol/K9AccountReceptor;->accounts([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
