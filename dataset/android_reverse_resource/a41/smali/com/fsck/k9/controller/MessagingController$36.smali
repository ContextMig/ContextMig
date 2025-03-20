.class Lcom/fsck/k9/controller/MessagingController$36;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->checkMailForAccount(Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 3541
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$36;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$36;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$36;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3544
    const-string v2, "Clearing notification flag for %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$36;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3546
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$36;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v5}, Lcom/fsck/k9/Account;->setRingNotified(Z)V

    .line 3548
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$36;->val$account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$36;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;

    move-result-object v1

    .line 3549
    .local v1, "stats":Lcom/fsck/k9/AccountStats;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    if-nez v2, :cond_1

    .line 3550
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$36;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->access$700(Lcom/fsck/k9/controller/MessagingController;)Lcom/fsck/k9/notification/NotificationController;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$36;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/notification/NotificationController;->clearNewMailNotifications(Lcom/fsck/k9/Account;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3555
    .end local v1    # "stats":Lcom/fsck/k9/AccountStats;
    :cond_1
    :goto_0
    return-void

    .line 3552
    :catch_0
    move-exception v0

    .line 3553
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "Unable to getUnreadMessageCount for account: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$36;->val$account:Lcom/fsck/k9/Account;

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
