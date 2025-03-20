.class Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$AccountsHandler;->dataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->notifyDataSetChanged()V

    .line 189
    :cond_0
    return-void
.end method
