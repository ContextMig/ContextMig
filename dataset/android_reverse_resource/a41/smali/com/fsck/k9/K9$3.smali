.class Lcom/fsck/k9/K9$3;
.super Lcom/fsck/k9/controller/SimpleMessagingListener;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/K9;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/K9;


# direct methods
.method constructor <init>(Lcom/fsck/k9/K9;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/K9;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/fsck/k9/K9$3;->this$0:Lcom/fsck/k9/K9;

    invoke-direct {p0}, Lcom/fsck/k9/controller/SimpleMessagingListener;-><init>()V

    return-void
.end method

.method private broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email://messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 568
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 569
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.fsck.k9.intent.extra.ACCOUNT"

    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v2, "com.fsck.k9.intent.extra.FOLDER"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v2, "com.fsck.k9.intent.extra.SENT_DATE"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 572
    const-string v2, "com.fsck.k9.intent.extra.FROM"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v2, "com.fsck.k9.intent.extra.TO"

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v2, "com.fsck.k9.intent.extra.CC"

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v2, "com.fsck.k9.intent.extra.BCC"

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p4, v3}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Address;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v2, "com.fsck.k9.intent.extra.SUBJECT"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v2, "com.fsck.k9.intent.extra.FROM_SELF"

    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/fsck/k9/Account;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 578
    iget-object v2, p0, Lcom/fsck/k9/K9$3;->this$0:Lcom/fsck/k9/K9;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/K9;->sendBroadcast(Landroid/content/Intent;)V

    .line 580
    const-string v2, "Broadcasted: action=%s account=%s folder=%s message uid=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 582
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    .line 584
    invoke-virtual {p4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 580
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    return-void
.end method

.method private updateMailListWidget()V
    .locals 3

    .prologue
    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/K9$3;->this$0:Lcom/fsck/k9/K9;

    invoke-static {v1}, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;->triggerMessageListWidgetUpdate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Error while updating message list widget"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateUnreadWidget()V
    .locals 3

    .prologue
    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/K9$3;->this$0:Lcom/fsck/k9/K9;

    invoke-static {v1}, Lcom/fsck/k9/provider/UnreadWidgetProvider;->updateUnreadCount(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while updating unread widget(s)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "unreadMessageCount"    # I

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/fsck/k9/K9$3;->updateUnreadWidget()V

    .line 633
    invoke-direct {p0}, Lcom/fsck/k9/K9$3;->updateMailListWidget()V

    .line 636
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fsck.k9.intent.action.REFRESH_OBSERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 637
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.intent.extra.ACCOUNT"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v1, "com.fsck.k9.intent.extra.FOLDER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v1, p0, Lcom/fsck/k9/K9$3;->this$0:Lcom/fsck/k9/K9;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/K9;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    return-void
.end method

.method public messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 616
    const-string v0, "com.fsck.k9.intent.action.EMAIL_DELETED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$3;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    .line 617
    invoke-direct {p0}, Lcom/fsck/k9/K9$3;->updateUnreadWidget()V

    .line 618
    invoke-direct {p0}, Lcom/fsck/k9/K9$3;->updateMailListWidget()V

    .line 619
    return-void
.end method

.method public synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 623
    const-string v0, "com.fsck.k9.intent.action.EMAIL_RECEIVED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$3;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    .line 624
    invoke-direct {p0}, Lcom/fsck/k9/K9$3;->updateUnreadWidget()V

    .line 625
    invoke-direct {p0}, Lcom/fsck/k9/K9$3;->updateMailListWidget()V

    .line 626
    return-void
.end method

.method public synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 609
    const-string v0, "com.fsck.k9.intent.action.EMAIL_DELETED"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fsck/k9/K9$3;->broadcastIntent(Ljava/lang/String;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    .line 610
    invoke-direct {p0}, Lcom/fsck/k9/K9$3;->updateUnreadWidget()V

    .line 611
    invoke-direct {p0}, Lcom/fsck/k9/K9$3;->updateMailListWidget()V

    .line 612
    return-void
.end method
