.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->progress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

.field final synthetic val$progress:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iput-boolean p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->val$progress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->val$progress:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$1000(Lcom/fsck/k9/activity/FolderList;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$1100(Lcom/fsck/k9/activity/FolderList;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$1000(Lcom/fsck/k9/activity/FolderList;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method
