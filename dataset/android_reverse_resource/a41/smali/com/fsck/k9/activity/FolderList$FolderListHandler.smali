.class Lcom/fsck/k9/activity/FolderList$FolderListHandler;
.super Landroid/os/Handler;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/FolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public accountSizeChanged(JJ)V
    .locals 7
    .param p1, "oldSize"    # J
    .param p3, "newSize"    # J

    .prologue
    .line 151
    iget-object v6, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;JJ)V

    invoke-virtual {v6, v0}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public dataChanged()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$7;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public folderLoading(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "loading"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public newFolders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/FolderInfoHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "newFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/FolderInfoHolder;>;"
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public progress(Z)V
    .locals 2
    .param p1, "progress"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$1000(Lcom/fsck/k9/activity/FolderList;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$6;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Z)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refreshTitle()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$1;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public workingAccount(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    new-instance v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderListHandler$3;-><init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;I)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/FolderList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method
