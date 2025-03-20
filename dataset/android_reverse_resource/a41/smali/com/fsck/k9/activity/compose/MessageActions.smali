.class public Lcom/fsck/k9/activity/compose/MessageActions;
.super Ljava/lang/Object;
.source "MessageActions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionCompose(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 19
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "accountUuid":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v2, "com.fsck.k9.intent.action.COMPOSE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void

    .line 20
    .end local v0    # "accountUuid":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static actionEditDraft(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "message_reference"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public static actionForward(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "decryptionResult"    # Landroid/os/Parcelable;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "message_reference"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "message_decryption_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    const-string v1, "com.fsck.k9.intent.action.FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public static actionReply(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;ZLandroid/os/Parcelable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "replyAll"    # Z
    .param p3, "decryptionResult"    # Landroid/os/Parcelable;

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/fsck/k9/activity/compose/MessageActions;->getActionReplyIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;ZLandroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public static getActionReplyIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.intent.action.REPLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "message_reference"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method public static getActionReplyIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;ZLandroid/os/Parcelable;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "replyAll"    # Z
    .param p3, "decryptionResult"    # Landroid/os/Parcelable;

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "message_decryption_result"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    const-string v1, "message_reference"

    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    if-eqz p2, :cond_0

    .line 38
    const-string v1, "com.fsck.k9.intent.action.REPLY_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.fsck.k9.intent.action.REPLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
