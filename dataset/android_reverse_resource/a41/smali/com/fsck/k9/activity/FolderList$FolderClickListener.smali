.class Lcom/fsck/k9/activity/FolderList$FolderClickListener;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/FolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderClickListener"
.end annotation


# instance fields
.field final search:Lcom/fsck/k9/search/LocalSearch;

.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;Lcom/fsck/k9/search/LocalSearch;)V
    .locals 0
    .param p2, "search"    # Lcom/fsck/k9/search/LocalSearch;

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderClickListener;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    iput-object p2, p0, Lcom/fsck/k9/activity/FolderList$FolderClickListener;->search:Lcom/fsck/k9/search/LocalSearch;

    .line 1223
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderClickListener;->this$0:Lcom/fsck/k9/activity/FolderList;

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderClickListener;->search:Lcom/fsck/k9/search/LocalSearch;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/activity/MessageList;->actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZ)V

    .line 1228
    return-void
.end method
