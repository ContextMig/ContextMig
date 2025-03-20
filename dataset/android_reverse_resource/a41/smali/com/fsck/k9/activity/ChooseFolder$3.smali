.class Lcom/fsck/k9/activity/ChooseFolder$3;
.super Ljava/lang/Object;
.source "ChooseFolder.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ChooseFolder;->configureFolderSearchView(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseFolder;

.field final synthetic val$folderMenuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/ChooseFolder;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$3;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iput-object p2, p0, Lcom/fsck/k9/activity/ChooseFolder$3;->val$folderMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$3;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseFolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder$3;->val$folderMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 191
    const/4 v0, 0x1

    return v0
.end method
