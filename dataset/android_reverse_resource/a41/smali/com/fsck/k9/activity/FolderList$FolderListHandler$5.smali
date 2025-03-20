.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->folderLoading(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$loading:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iput-object p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->val$folder:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->val$loading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v1}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->val$folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/activity/FolderInfoHolder;

    move-result-object v0

    .line 167
    .local v0, "folderHolder":Lcom/fsck/k9/activity/FolderInfoHolder;
    if-eqz v0, :cond_0

    .line 168
    iget-boolean v1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$5;->val$loading:Z

    iput-boolean v1, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->loading:Z

    .line 171
    :cond_0
    return-void
.end method
