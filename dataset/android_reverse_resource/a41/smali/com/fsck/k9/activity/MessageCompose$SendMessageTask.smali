.class Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final account:Lcom/fsck/k9/Account;

.field final contacts:Lcom/fsck/k9/helper/Contacts;

.field final context:Landroid/content/Context;

.field final draftId:Ljava/lang/Long;

.field final message:Lcom/fsck/k9/mail/Message;

.field final messageReference:Lcom/fsck/k9/activity/MessageReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/helper/Contacts;Lcom/fsck/k9/mail/Message;Ljava/lang/Long;Lcom/fsck/k9/activity/MessageReference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "contacts"    # Lcom/fsck/k9/helper/Contacts;
    .param p4, "message"    # Lcom/fsck/k9/mail/Message;
    .param p5, "draftId"    # Ljava/lang/Long;
    .param p6, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 1390
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1391
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->context:Landroid/content/Context;

    .line 1392
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->account:Lcom/fsck/k9/Account;

    .line 1393
    iput-object p3, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->contacts:Lcom/fsck/k9/helper/Contacts;

    .line 1394
    iput-object p4, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->message:Lcom/fsck/k9/mail/Message;

    .line 1395
    iput-object p5, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->draftId:Ljava/lang/Long;

    .line 1396
    iput-object p6, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 1397
    return-void
.end method

.method private updateReferencedMessage()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1423
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFlag()Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1424
    const-string v0, "Setting referenced message (%s, %s) flag to %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 1425
    invoke-virtual {v7}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 1426
    invoke-virtual {v6}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 1427
    invoke-virtual {v7}, Lcom/fsck/k9/activity/MessageReference;->getFlag()Lcom/fsck/k9/mail/Flag;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1424
    invoke-static {v0, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1429
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 1430
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    .line 1431
    .local v1, "account":Lcom/fsck/k9/Account;
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 1432
    .local v2, "folderName":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 1433
    .local v3, "sourceMessageUid":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 1434
    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageReference;->getFlag()Lcom/fsck/k9/mail/Flag;

    move-result-object v4

    .line 1433
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;Z)V

    .line 1436
    .end local v1    # "account":Lcom/fsck/k9/Account;
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v3    # "sourceMessageUid":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1381
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 1402
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->contacts:Lcom/fsck/k9/helper/Contacts;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->message:Lcom/fsck/k9/mail/Message;

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/helper/Contacts;->markAsContacted([Lcom/fsck/k9/mail/Address;)V

    .line 1403
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->contacts:Lcom/fsck/k9/helper/Contacts;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->message:Lcom/fsck/k9/mail/Message;

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/helper/Contacts;->markAsContacted([Lcom/fsck/k9/mail/Address;)V

    .line 1404
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->contacts:Lcom/fsck/k9/helper/Contacts;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->message:Lcom/fsck/k9/mail/Message;

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/helper/Contacts;->markAsContacted([Lcom/fsck/k9/mail/Address;)V

    .line 1405
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->updateReferencedMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v1, v2, v3, v6}, Lcom/fsck/k9/controller/MessagingController;->sendMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 1411
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->draftId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->draftId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/fsck/k9/controller/MessagingController;->deleteDraft(Lcom/fsck/k9/Account;J)V

    .line 1416
    :cond_0
    return-object v6

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to mark contact as contacted."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
