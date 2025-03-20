.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->refreshTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v3, 0x7f0701f5

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$100(Lcom/fsck/k9/activity/FolderList;)I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$400(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Lcom/fsck/k9/activity/ActivityListener;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/ActivityListener;->getOperation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "operation":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_1

    .line 120
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$600(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v2}, Lcom/fsck/k9/activity/FolderList;->access$500(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_1
    return-void

    .line 114
    .end local v0    # "operation":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v4, v4, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v4}, Lcom/fsck/k9/activity/FolderList;->access$100(Lcom/fsck/k9/activity/FolderList;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$200(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 122
    .restart local v0    # "operation":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$600(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
