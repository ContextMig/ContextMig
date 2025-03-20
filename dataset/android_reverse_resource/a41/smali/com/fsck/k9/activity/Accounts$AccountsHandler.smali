.class Lcom/fsck/k9/activity/Accounts$AccountsHandler;
.super Landroid/os/Handler;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->setViewTitle()V

    return-void
.end method

.method private setViewTitle()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$000(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    const v3, 0x7f07012a

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$100(Lcom/fsck/k9/activity/Accounts;)I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$200(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    iget-object v1, v1, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;

    iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/ActivityListener;->getOperation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "operation":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_1

    .line 169
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$300(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_1
    return-void

    .line 162
    .end local v0    # "operation":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$200(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v4}, Lcom/fsck/k9/activity/Accounts;->access$100(Lcom/fsck/k9/activity/Accounts;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$200(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 171
    .restart local v0    # "operation":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$300(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$300(Lcom/fsck/k9/activity/Accounts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "oldSize"    # J
    .param p4, "newSize"    # J

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p4

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$4;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;Lcom/fsck/k9/Account;JJ)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public dataChanged()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$2;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public progress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$6;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;I)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public progress(Z)V
    .locals 2
    .param p1, "progress"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$700(Lcom/fsck/k9/activity/Accounts;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refreshTitle()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$1;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public workingAccount(Lcom/fsck/k9/Account;I)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "res"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler$3;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;ILcom/fsck/k9/Account;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method
