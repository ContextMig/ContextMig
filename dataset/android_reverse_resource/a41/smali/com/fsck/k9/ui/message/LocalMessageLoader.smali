.class public Lcom/fsck/k9/ui/message/LocalMessageLoader;
.super Landroid/content/AsyncTaskLoader;
.source "LocalMessageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/fsck/k9/mailstore/LocalMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final account:Lcom/fsck/k9/Account;

.field private final controller:Lcom/fsck/k9/controller/MessagingController;

.field private message:Lcom/fsck/k9/mailstore/LocalMessage;

.field private final messageReference:Lcom/fsck/k9/activity/MessageReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/fsck/k9/controller/MessagingController;
    .param p3, "account"    # Lcom/fsck/k9/Account;
    .param p4, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->controller:Lcom/fsck/k9/controller/MessagingController;

    .line 25
    iput-object p3, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->account:Lcom/fsck/k9/Account;

    .line 26
    iput-object p4, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 27
    return-void
.end method

.method private loadMessageFromDatabase()Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->controller:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->loadMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deliverResult(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 43
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/message/LocalMessageLoader;->deliverResult(Lcom/fsck/k9/mailstore/LocalMessage;)V

    return-void
.end method

.method public isCreatedFor(Lcom/fsck/k9/activity/MessageReference;)Z
    .locals 1
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->messageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/MessageReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadInBackground()Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 3

    .prologue
    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/message/LocalMessageLoader;->loadMessageFromDatabase()Lcom/fsck/k9/mailstore/LocalMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while loading message from database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/fsck/k9/ui/message/LocalMessageLoader;->loadInBackground()Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/message/LocalMessageLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    if-nez v0, :cond_2

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/message/LocalMessageLoader;->forceLoad()V

    .line 38
    :cond_2
    return-void
.end method
