.class Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$AccountsHandler;->accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$newSize:J

.field final synthetic val$oldSize:J


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;Lcom/fsck/k9/Account;JJ)V
    .locals 1
    .param p1, "this$1"    # Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$account:Lcom/fsck/k9/Account;

    iput-wide p3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$newSize:J

    iput-wide p5, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$oldSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 207
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v3, v3, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$600(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/AccountStats;

    .line 208
    .local v0, "stats":Lcom/fsck/k9/AccountStats;
    iget-wide v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$newSize:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->measureAccounts()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    iget-wide v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$newSize:J

    iput-wide v4, v0, Lcom/fsck/k9/AccountStats;->size:J

    .line 211
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v3, v3, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    const v4, 0x7f070126

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v6, v6, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    .line 212
    invoke-virtual {v6}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v6

    iget-wide v8, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$oldSize:J

    invoke-static {v6, v8, v9}, Lcom/fsck/k9/helper/SizeFormatter;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v7, v7, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v7}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v7

    iget-wide v8, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->val$newSize:J

    invoke-static {v7, v8, v9}, Lcom/fsck/k9/helper/SizeFormatter;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 211
    invoke-virtual {v3, v4, v5}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "toastText":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v3, v3, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 215
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 216
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v3, v3, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v3, v3, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_1
    return-void
.end method
