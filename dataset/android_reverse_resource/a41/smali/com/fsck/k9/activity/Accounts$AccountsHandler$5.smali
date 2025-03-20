.class Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

.field final synthetic val$progress:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iput-boolean p2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->val$progress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->val$progress:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$700(Lcom/fsck/k9/activity/Accounts;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$700(Lcom/fsck/k9/activity/Accounts;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method
