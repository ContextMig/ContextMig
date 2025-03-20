.class Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;
.super Ljava/lang/Object;
.source "DbxFields.java"

# interfaces
.implements Lcom/dropbox/sync/android/DbxList$ListOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemFieldListOps"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/dropbox/sync/android/DbxFields;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxFields;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxFields;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    .line 605
    return-void
.end method

.method private getListValue()Lcom/dropbox/sync/android/DbxValue;
    .locals 4

    .prologue
    .line 696
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    monitor-enter v2

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/dropbox/sync/android/DbxFields;->getValue(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 698
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->valueType()Lcom/dropbox/sync/android/DbxFields$ValueType;

    move-result-object v1

    sget-object v3, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    if-eq v1, v3, :cond_1

    .line 699
    :cond_0
    sget-object v1, Lcom/dropbox/sync/android/DbxFields$ValueType;->LIST:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-static {v1}, Lcom/dropbox/sync/android/DbxFields;->throwWrongValueType(Lcom/dropbox/sync/android/DbxFields$ValueType;)Lcom/dropbox/sync/android/DbxRuntimeException;

    .line 701
    :cond_1
    monitor-exit v2

    return-object v0

    .line 702
    .end local v0    # "v":Lcom/dropbox/sync/android/DbxValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public listAppend(Lcom/dropbox/sync/android/DbxAtom;)V
    .locals 5
    .param p1, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 637
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite(Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    monitor-enter v2

    .line 639
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 640
    .local v0, "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    .line 642
    monitor-exit v2

    .line 643
    return-void

    .line 642
    .end local v0    # "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listClear()V
    .locals 4

    .prologue
    .line 619
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    monitor-enter v1

    .line 621
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    .line 622
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    sget-object v3, Lcom/dropbox/sync/android/DbxListValue;->EMPTY:Lcom/dropbox/sync/android/DbxListValue;

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public listDelete(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 669
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite(Ljava/lang/String;)V

    .line 670
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    monitor-enter v2

    .line 671
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 672
    .local v0, "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 673
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 674
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    .line 675
    monitor-exit v2

    .line 676
    return-void

    .line 675
    .end local v0    # "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listGet(I)Lcom/dropbox/sync/android/DbxAtom;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 628
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    monitor-enter v2

    .line 629
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v0

    .line 630
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 631
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxAtom;

    monitor-exit v2

    return-object v1

    .line 632
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listInsert(ILcom/dropbox/sync/android/DbxAtom;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 647
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite(Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    monitor-enter v2

    .line 649
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 650
    .local v0, "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 651
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 652
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    .line 653
    monitor-exit v2

    .line 654
    return-void

    .line 653
    .end local v0    # "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listMove(II)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 680
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite(Ljava/lang/String;)V

    .line 681
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    monitor-enter v5

    .line 682
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 683
    .local v1, "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    invoke-static {p1, v4, v6}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 684
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    invoke-static {p2, v4, v6}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 685
    if-ge p1, p2, :cond_0

    const/4 v3, 0x1

    .line 686
    .local v3, "offset":I
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/sync/android/DbxAtom;

    .line 687
    .local v2, "moved":Lcom/dropbox/sync/android/DbxAtom;
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-eq v0, p2, :cond_1

    .line 688
    add-int v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 687
    add-int/2addr v0, v3

    goto :goto_1

    .line 685
    .end local v0    # "i":I
    .end local v2    # "moved":Lcom/dropbox/sync/android/DbxAtom;
    .end local v3    # "offset":I
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 690
    .restart local v0    # "i":I
    .restart local v2    # "moved":Lcom/dropbox/sync/android/DbxAtom;
    .restart local v3    # "offset":I
    :cond_1
    invoke-interface {v1, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v6, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    .line 692
    monitor-exit v5

    .line 693
    return-void

    .line 692
    .end local v0    # "i":I
    .end local v1    # "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    .end local v2    # "moved":Lcom/dropbox/sync/android/DbxAtom;
    .end local v3    # "offset":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public listPut(ILcom/dropbox/sync/android/DbxAtom;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 658
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/DbxFields;->checkBeforeWrite(Ljava/lang/String;)V

    .line 659
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    monitor-enter v2

    .line 660
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 661
    .local v0, "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lcom/dropbox/sync/android/DbxList;->checkIndex(IIZ)I

    .line 662
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->this$0:Lcom/dropbox/sync/android/DbxFields;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxValue;->create(Ljava/util/List;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;)Lcom/dropbox/sync/android/DbxFields;

    .line 664
    monitor-exit v2

    .line 665
    return-void

    .line 664
    .end local v0    # "modList":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxAtom;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listSize()I
    .locals 1

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toList()Ljava/util/List;
    .locals 1
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
    .line 609
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFields$MemFieldListOps;->getListValue()Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
