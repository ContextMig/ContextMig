.class Lcom/fsck/k9/controller/MessagingController$26$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController$26;->act(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/controller/MessagingController$26;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$26;Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/controller/MessagingController$26;

    .prologue
    .line 2895
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->this$1:Lcom/fsck/k9/controller/MessagingController$26;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2899
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->val$account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->val$messages:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->access$2100(Lcom/fsck/k9/Account;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 2900
    .local v3, "messagesInThreads":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->this$1:Lcom/fsck/k9/controller/MessagingController$26;

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController$26;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->this$1:Lcom/fsck/k9/controller/MessagingController$26;

    iget-object v2, v2, Lcom/fsck/k9/controller/MessagingController$26;->val$srcFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$26$1;->this$1:Lcom/fsck/k9/controller/MessagingController$26;

    iget-object v4, v4, Lcom/fsck/k9/controller/MessagingController$26;->val$destFolder:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->access$1900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2904
    .end local v3    # "messagesInThreads":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :goto_0
    return-void

    .line 2901
    :catch_0
    move-exception v6

    .line 2902
    .local v6, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v0, "Exception while moving messages"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
