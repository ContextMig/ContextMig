.class Lcom/fsck/k9/controller/MessagingController$32$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController$32;->act(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/controller/MessagingController$32;

.field final synthetic val$accountMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$32;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/controller/MessagingController$32;

    .prologue
    .line 3160
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$32$1;->this$1:Lcom/fsck/k9/controller/MessagingController$32;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$32$1;->val$accountMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3163
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$32$1;->val$accountMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 3165
    .local v1, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :try_start_0
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalMessage;->debugClearLocalData()V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3166
    :catch_0
    move-exception v0

    .line 3167
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "clearing local message content failed!"

    invoke-direct {v2, v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3170
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    .end local v1    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_0
    return-void
.end method
