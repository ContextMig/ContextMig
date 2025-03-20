.class public Lcom/fsck/k9/activity/compose/SaveMessageTask;
.super Landroid/os/AsyncTask;
.source "SaveMessageTask.java"


# annotations
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
.field account:Lcom/fsck/k9/Account;

.field contacts:Lcom/fsck/k9/helper/Contacts;

.field context:Landroid/content/Context;

.field draftId:J

.field handler:Landroid/os/Handler;

.field message:Lcom/fsck/k9/mail/Message;

.field saveRemotely:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/helper/Contacts;Landroid/os/Handler;Lcom/fsck/k9/mail/Message;JZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .param p3, "contacts"    # Lcom/fsck/k9/helper/Contacts;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "message"    # Lcom/fsck/k9/mail/Message;
    .param p6, "draftId"    # J
    .param p8, "saveRemotely"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->account:Lcom/fsck/k9/Account;

    .line 26
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->contacts:Lcom/fsck/k9/helper/Contacts;

    .line 27
    iput-object p4, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->handler:Landroid/os/Handler;

    .line 28
    iput-object p5, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->message:Lcom/fsck/k9/mail/Message;

    .line 29
    iput-wide p6, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->draftId:J

    .line 30
    iput-boolean p8, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->saveRemotely:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/SaveMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    .line 36
    .local v1, "messagingController":Lcom/fsck/k9/controller/MessagingController;
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->message:Lcom/fsck/k9/mail/Message;

    iget-wide v4, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->draftId:J

    iget-boolean v6, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->saveRemotely:Z

    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/controller/MessagingController;->saveDraft(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;JZ)Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 37
    .local v0, "draftMessage":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/MessagingController;->getId(Lcom/fsck/k9/mail/Message;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->draftId:J

    .line 39
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->handler:Landroid/os/Handler;

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->draftId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 40
    .local v7, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    const/4 v2, 0x0

    return-object v2
.end method
