.class public Lcom/fsck/k9/activity/LauncherShortcuts;
.super Lcom/fsck/k9/activity/AccountList;
.source "LauncherShortcuts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fsck/k9/activity/AccountList;-><init>()V

    return-void
.end method


# virtual methods
.method protected displaySpecialAccounts()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method protected onAccountSelected(Lcom/fsck/k9/BaseAccount;)V
    .locals 7
    .param p1, "account"    # Lcom/fsck/k9/BaseAccount;

    .prologue
    .line 31
    const/4 v4, 0x0

    .line 33
    .local v4, "shortcutIntent":Landroid/content/Intent;
    instance-of v5, p1, Lcom/fsck/k9/search/SearchAccount;

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 34
    check-cast v3, Lcom/fsck/k9/search/SearchAccount;

    .line 35
    .local v3, "searchAccount":Lcom/fsck/k9/search/SearchAccount;
    invoke-virtual {v3}, Lcom/fsck/k9/search/SearchAccount;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/fsck/k9/activity/MessageList;->shortcutIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 40
    .end local v3    # "searchAccount":Lcom/fsck/k9/search/SearchAccount;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    :cond_0
    invoke-interface {p1}, Lcom/fsck/k9/BaseAccount;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_1
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const v5, 0x7f02007a

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .line 48
    .local v1, "iconResource":Landroid/os/Parcelable;
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/fsck/k9/activity/LauncherShortcuts;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/activity/LauncherShortcuts;->finish()V

    .line 52
    return-void

    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "iconResource":Landroid/os/Parcelable;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    move-object v5, p1

    .line 37
    check-cast v5, Lcom/fsck/k9/Account;

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Lcom/fsck/k9/activity/FolderList;->actionHandleAccountIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Z)Landroid/content/Intent;

    move-result-object v4

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 16
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/LauncherShortcuts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/activity/LauncherShortcuts;->finish()V

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/AccountList;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method
