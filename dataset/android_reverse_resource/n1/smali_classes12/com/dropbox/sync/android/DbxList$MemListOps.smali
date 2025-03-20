.class Lcom/dropbox/sync/android/DbxList$MemListOps;
.super Ljava/lang/Object;
.source "DbxList.java"

# interfaces
.implements Lcom/dropbox/sync/android/DbxList$ListOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemListOps"
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    .line 520
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    .line 524
    return-void
.end method


# virtual methods
.method public declared-synchronized listAppend(Lcom/dropbox/sync/android/DbxAtom;)V
    .locals 1
    .param p1, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listClear()V
    .locals 1

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listDelete(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 567
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listGet(I)Lcom/dropbox/sync/android/DbxAtom;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 544
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/DbxAtom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listInsert(ILcom/dropbox/sync/android/DbxAtom;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 555
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listMove(II)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 573
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    if-ne p1, p2, :cond_0

    .line 583
    :goto_0
    monitor-exit p0

    return-void

    .line 577
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v2, 0x1

    .line 578
    .local v2, "offset":I
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxAtom;

    .line 579
    .local v1, "moved":Lcom/dropbox/sync/android/DbxAtom;
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-eq v0, p2, :cond_2

    .line 580
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    iget-object v4, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    add-int v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 579
    add-int/2addr v0, v2

    goto :goto_2

    .line 577
    .end local v0    # "i":I
    .end local v1    # "moved":Lcom/dropbox/sync/android/DbxAtom;
    .end local v2    # "offset":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 582
    .restart local v0    # "i":I
    .restart local v1    # "moved":Lcom/dropbox/sync/android/DbxAtom;
    .restart local v2    # "offset":I
    :cond_2
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v3, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 572
    .end local v0    # "i":I
    .end local v1    # "moved":Lcom/dropbox/sync/android/DbxAtom;
    .end local v2    # "offset":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized listPut(ILcom/dropbox/sync/android/DbxAtom;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 561
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listSize()I
    .locals 1

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxList$MemListOps;->mList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
