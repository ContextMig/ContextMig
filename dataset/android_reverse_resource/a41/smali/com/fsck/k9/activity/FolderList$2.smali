.class Lcom/fsck/k9/activity/FolderList$2;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/FolderList;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$2;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$2;->this$0:Lcom/fsck/k9/activity/FolderList;

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$2;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$300(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/activity/FolderList$FolderListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fsck/k9/activity/FolderList$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/FolderInfoHolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/fsck/k9/activity/FolderList;->access$1200(Lcom/fsck/k9/activity/FolderList;Ljava/lang/String;)V

    .line 274
    return-void
.end method
