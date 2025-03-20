.class Lcom/fsck/k9/activity/FolderList$3;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList;->configureFolderSearchView(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;

.field final synthetic val$folderMenuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$3;->this$0:Lcom/fsck/k9/activity/FolderList;

    iput-object p2, p0, Lcom/fsck/k9/activity/FolderList$3;->val$folderMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$3;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 604
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$3;->val$folderMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 597
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$3;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$3;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v2, 0x7f0701d0

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const/4 v0, 0x1

    return v0
.end method
