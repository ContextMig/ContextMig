.class Lcom/fsck/k9/controller/MessagingController$22;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->getAccountStats(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Landroid/content/Context;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 2725
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$22;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$22;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$22;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$22;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2729
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$22;->val$account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$22;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;

    move-result-object v1

    .line 2730
    .local v1, "stats":Lcom/fsck/k9/AccountStats;
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$22;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$22;->val$account:Lcom/fsck/k9/Account;

    invoke-interface {v2, v3, v1}, Lcom/fsck/k9/controller/MessagingListener;->accountStatusChanged(Lcom/fsck/k9/BaseAccount;Lcom/fsck/k9/AccountStats;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2735
    .end local v1    # "stats":Lcom/fsck/k9/AccountStats;
    :goto_0
    return-void

    .line 2731
    :catch_0
    move-exception v0

    .line 2732
    .local v0, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "Count not get unread count for account %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$22;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
