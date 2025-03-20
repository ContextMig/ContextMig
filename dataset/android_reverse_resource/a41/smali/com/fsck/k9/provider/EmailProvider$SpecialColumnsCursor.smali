.class Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;
.super Landroid/database/CursorWrapper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpecialColumnsCursor"
.end annotation


# instance fields
.field private mColumnMapping:[I

.field private mColumnNames:[Ljava/lang/String;

.field private mSpecialColumnValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "allColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p3, "specialColumns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 666
    iput-object p2, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnNames:[Ljava/lang/String;

    .line 667
    array-length v6, p2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    .line 668
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mSpecialColumnValues:[Ljava/lang/String;

    .line 669
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v0, 0x0

    .local v0, "columnIndex":I
    const/4 v5, 0x0

    .local v5, "specialColumnCount":I
    array-length v4, p2

    .local v4, "len":I
    move v1, v0

    .end local v0    # "columnIndex":I
    .local v1, "columnIndex":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 670
    aget-object v2, p2, v3

    .line 672
    .local v2, "columnName":Ljava/lang/String;
    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 674
    iget-object v7, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mSpecialColumnValues:[Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v5

    .line 677
    iget-object v6, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    add-int/lit8 v7, v5, 0x1

    neg-int v7, v7

    aput v7, v6, v3

    .line 678
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    .line 669
    .end local v1    # "columnIndex":I
    .restart local v0    # "columnIndex":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "columnIndex":I
    .restart local v1    # "columnIndex":I
    goto :goto_0

    .line 680
    :cond_0
    iget-object v6, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "columnIndex":I
    .restart local v0    # "columnIndex":I
    aput v1, v6, v3

    goto :goto_1

    .line 683
    .end local v0    # "columnIndex":I
    .end local v2    # "columnName":Ljava/lang/String;
    .restart local v1    # "columnIndex":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 687
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 688
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_0

    .line 689
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Special column can only be retrieved as string."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    :cond_0
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getBlob(I)[B

    move-result-object v1

    return-object v1
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnNames:[Ljava/lang/String;

    array-length v1, v2

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 703
    iget-object v2, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 708
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 702
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 713
    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 714
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 715
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown column name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 723
    iget-object v0, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 733
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 734
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_0

    .line 735
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Special column can only be retrieved as string."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 738
    :cond_0
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getDouble(I)D

    move-result-wide v2

    return-wide v2
.end method

.method public getFloat(I)F
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 743
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 744
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_0

    .line 745
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Special column can only be retrieved as string."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_0
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 753
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 754
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_0

    .line 755
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Special column can only be retrieved as string."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_0
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 763
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 764
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_0

    .line 765
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Special column can only be retrieved as string."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    :cond_0
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getShort(I)S
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 773
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 774
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_0

    .line 775
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Special column can only be retrieved as string."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :cond_0
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getShort(I)S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 783
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 784
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_0

    .line 785
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mSpecialColumnValues:[Ljava/lang/String;

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 788
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 793
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 794
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_0

    .line 795
    const/4 v1, 0x3

    .line 798
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getType(I)I

    move-result v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 803
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mColumnMapping:[I

    aget v0, v1, p1

    .line 804
    .local v0, "realColumnIndex":I
    if-gez v0, :cond_1

    .line 805
    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$SpecialColumnsCursor;->mSpecialColumnValues:[Ljava/lang/String;

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 808
    :goto_0
    return v1

    .line 805
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 808
    :cond_1
    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    goto :goto_0
.end method
