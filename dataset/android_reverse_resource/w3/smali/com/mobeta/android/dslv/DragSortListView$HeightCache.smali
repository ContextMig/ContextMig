.class Lcom/mobeta/android/dslv/DragSortListView$HeightCache;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeightCache"
.end annotation


# instance fields
.field private mMap:Landroid/util/SparseIntArray;

.field private mMaxSize:I

.field private mOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 848
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    .line 850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/List;

    .line 851
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMaxSize:I

    .line 852
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 858
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 859
    .local v0, "currentHeight":I
    if-eq v0, p2, :cond_0

    .line 860
    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMaxSize:I

    if-ne v1, v2, :cond_1

    .line 862
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 867
    :goto_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 868
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_0
    return-void

    .line 865
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 878
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 879
    return-void
.end method

.method public get(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 873
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method
