.class Lcom/fsck/k9/activity/ChooseFolder$4$2;
.super Ljava/lang/Object;
.source "ChooseFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ChooseFolder$4;->listFolders(Lcom/fsck/k9/Account;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/ChooseFolder$4;

.field final synthetic val$folderList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder$4;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/ChooseFolder$4;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$4$2;->this$1:Lcom/fsck/k9/activity/ChooseFolder$4;

    iput-object p2, p0, Lcom/fsck/k9/activity/ChooseFolder$4$2;->val$folderList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder$4$2;->this$1:Lcom/fsck/k9/activity/ChooseFolder$4;

    iget-object v1, v1, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v1, v1, Lcom/fsck/k9/activity/ChooseFolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 367
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder$4$2;->val$folderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "folderName":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$4$2;->this$1:Lcom/fsck/k9/activity/ChooseFolder$4;

    iget-object v2, v2, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v2, v2, Lcom/fsck/k9/activity/ChooseFolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 371
    .end local v0    # "folderName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder$4$2;->this$1:Lcom/fsck/k9/activity/ChooseFolder$4;

    iget-object v1, v1, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v1, v1, Lcom/fsck/k9/activity/ChooseFolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 378
    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder$4$2;->this$1:Lcom/fsck/k9/activity/ChooseFolder$4;

    iget-object v1, v1, Lcom/fsck/k9/activity/ChooseFolder$4;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 379
    return-void
.end method
