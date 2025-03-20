.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->newFolders(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

.field final synthetic val$newFolders:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iput-object p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->val$newFolders:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$700(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$700(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->val$newFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$700(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->access$802(Lcom/fsck/k9/activity/FolderList$FolderListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 135
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$2;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$900(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->dataChanged()V

    .line 136
    return-void
.end method
