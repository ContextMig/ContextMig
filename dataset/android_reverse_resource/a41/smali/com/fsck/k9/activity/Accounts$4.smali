.class Lcom/fsck/k9/activity/Accounts$4;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$4;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$4;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$1800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/BaseAccount;

    move-result-object v1

    instance-of v1, v1, Lcom/fsck/k9/Account;

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$4;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$1800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/BaseAccount;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 1101
    .local v0, "realAccount":Lcom/fsck/k9/Account;
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$4;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    move-result-object v1

    const v2, 0x7f07015b

    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->workingAccount(Lcom/fsck/k9/Account;I)V

    .line 1103
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$4;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    const/4 v2, 0x0

    .line 1104
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/controller/MessagingController;->clear(Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 1106
    .end local v0    # "realAccount":Lcom/fsck/k9/Account;
    :cond_0
    return-void
.end method
