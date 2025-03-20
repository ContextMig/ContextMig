.class public Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "DragNDropCursorAdapter.java"

# interfaces
.implements Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mHandler:I

.field mPosition:[I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2a9a97f982aa2e97L    # 1.855237289705456E-103

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 30
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 32
    iput p6, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mHandler:I

    aput-boolean v8, v7, v6

    .line 33
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->setup()V

    .line 34
    aput-boolean v8, v7, v8

    return-void
.end method

.method private setup()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    .line 49
    if-nez v2, :cond_0

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    :goto_0
    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    .line 54
    .local v0, "i":I
    :goto_1
    return-void

    .line 49
    .end local v0    # "i":I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    .line 53
    const/4 v0, 0x0

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    goto :goto_2

    .line 54
    :cond_2
    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getDragHandler()I
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    iget v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mHandler:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    aget v1, v1, p1

    invoke-super {p0, v1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    aget v1, v1, p1

    invoke-super {p0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    aget v1, v1, p1

    invoke-super {p0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItemId(I)J

    move-result-wide v2

    const/16 v1, 0xe

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    aget v1, v1, p1

    invoke-super {p0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    aget v1, v1, p1

    invoke-super {p0, v1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 83
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    aget v1, v1, p1

    invoke-super {p0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->isEnabled(I)Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onItemDrag(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onItemDrop(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;Landroid/view/View;IIJ)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 40
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    iput-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->mPosition:[I

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 41
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropCursorAdapter;->setup()V

    .line 43
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    return-object v0
.end method
