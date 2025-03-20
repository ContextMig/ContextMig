.class Lcom/fsck/k9/controller/MessagingController$35;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->checkMail(Landroid/content/Context;Lcom/fsck/k9/Account;ZZLcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ignoreLastCheckedTime:Z

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 3438
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$35;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$account:Lcom/fsck/k9/Account;

    iput-boolean p4, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$ignoreLastCheckedTime:Z

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3443
    :try_start_0
    const-string v4, "Starting mail check"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3445
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    .line 3448
    .local v3, "prefs":Lcom/fsck/k9/Preferences;
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$account:Lcom/fsck/k9/Account;

    if-eqz v4, :cond_1

    .line 3449
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3450
    .local v1, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$account:Lcom/fsck/k9/Account;

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3455
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 3456
    .local v0, "account":Lcom/fsck/k9/Account;
    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$35;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$context:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$ignoreLastCheckedTime:Z

    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingController$35;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-static {v5, v6, v0, v7, v8}, Lcom/fsck/k9/controller/MessagingController;->access$2600(Lcom/fsck/k9/controller/MessagingController;Landroid/content/Context;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3459
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    .end local v3    # "prefs":Lcom/fsck/k9/Preferences;
    :catch_0
    move-exception v2

    .line 3460
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Unable to synchronize mail"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3462
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$35;->this$0:Lcom/fsck/k9/controller/MessagingController;

    const-string v5, "finalize sync"

    const/4 v6, 0x0

    new-instance v7, Lcom/fsck/k9/controller/MessagingController$35$1;

    invoke-direct {v7, p0}, Lcom/fsck/k9/controller/MessagingController$35$1;-><init>(Lcom/fsck/k9/controller/MessagingController$35;)V

    invoke-static {v4, v5, v6, v7}, Lcom/fsck/k9/controller/MessagingController;->access$2000(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3478
    return-void

    .line 3452
    .restart local v3    # "prefs":Lcom/fsck/k9/Preferences;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    goto :goto_0
.end method
