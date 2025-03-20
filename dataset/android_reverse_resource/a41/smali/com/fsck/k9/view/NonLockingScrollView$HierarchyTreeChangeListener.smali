.class Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;
.super Ljava/lang/Object;
.source "NonLockingScrollView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/NonLockingScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HierarchyTreeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/view/NonLockingScrollView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/view/NonLockingScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/view/NonLockingScrollView;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;->this$0:Lcom/fsck/k9/view/NonLockingScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 163
    instance-of v3, p2, Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;->this$0:Lcom/fsck/k9/view/NonLockingScrollView;

    invoke-static {v3}, Lcom/fsck/k9/view/NonLockingScrollView;->access$000(Lcom/fsck/k9/view/NonLockingScrollView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    return-void

    .line 165
    :cond_1
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 166
    check-cast v1, Landroid/view/ViewGroup;

    .line 167
    .local v1, "childGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 168
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 176
    instance-of v3, p2, Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;->this$0:Lcom/fsck/k9/view/NonLockingScrollView;

    invoke-static {v3}, Lcom/fsck/k9/view/NonLockingScrollView;->access$000(Lcom/fsck/k9/view/NonLockingScrollView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 179
    check-cast v1, Landroid/view/ViewGroup;

    .line 180
    .local v1, "childGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 181
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_0
.end method
