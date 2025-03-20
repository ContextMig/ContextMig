.class Lcom/fsck/k9/controller/MessagingController$13;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$13;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1639
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$13;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$13;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MessagingController;->access$800(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1652
    :goto_0
    return-void

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    .local v0, "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    const-string v2, "Failed to process pending command because storage is not available - trying again later."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1643
    new-instance v2, Lcom/fsck/k9/controller/UnavailableAccountException;

    invoke-direct {v2, v0}, Lcom/fsck/k9/controller/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1644
    .end local v0    # "e":Lcom/fsck/k9/mailstore/UnavailableStorageException;
    :catch_1
    move-exception v1

    .line 1645
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "processPendingCommands"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
