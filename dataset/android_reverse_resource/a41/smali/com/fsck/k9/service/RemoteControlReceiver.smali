.class public Lcom/fsck/k9/service/RemoteControlReceiver;
.super Lcom/fsck/k9/service/CoreReceiver;
.source "RemoteControlReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fsck/k9/service/CoreReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tmpWakeLockId"    # Ljava/lang/Integer;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 20
    const-string v8, "RemoteControlReceiver.onReceive %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const-string v8, "com.fsck.k9.K9RemoteControl.set"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 23
    invoke-static {p1, p2, p3}, Lcom/fsck/k9/service/RemoteControlService;->set(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;)V

    .line 24
    const/4 p3, 0x0

    .line 47
    :cond_0
    :goto_0
    return-object p3

    .line 25
    :cond_1
    const-string v8, "com.fsck.k9.K9RemoteControl.requestAccounts"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 27
    :try_start_0
    invoke-static {p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    .line 28
    .local v6, "preferences":Lcom/fsck/k9/Preferences;
    invoke-virtual {v6}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 29
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 30
    .local v7, "uuids":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v3, v8, [Ljava/lang/String;

    .line 31
    .local v3, "descriptions":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 33
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 35
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 36
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38
    .end local v0    # "account":Lcom/fsck/k9/Account;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/fsck/k9/service/RemoteControlReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    .line 39
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "com.fsck.k9.K9RemoteControl.accountUuids"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    const-string v8, "com.fsck.k9.K9RemoteControl.accountDescriptions"

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "descriptions":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "preferences":Lcom/fsck/k9/Preferences;
    .end local v7    # "uuids":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 42
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "Could not handle K9_RESPONSE_INTENT"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v4, v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
