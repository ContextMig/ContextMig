.class public Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;
.super Landroid/widget/ListView;
.source "DragNDropListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private isDraggingEnabled:Z

.field mDragHandler:I

.field mDragMode:Z

.field mDragNDropListener:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;

.field mDragPointOffset:I

.field mDragView:Landroid/widget/ImageView;

.field mStartPosition:I

.field mWm:Landroid/view/WindowManager;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5181c70ad6c393b8L    # -9.723250762818154E-85

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView"

    const/16 v3, 0x59

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragHandler:I

    .line 289
    iput-boolean v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->isDraggingEnabled:Z

    aput-boolean v2, v0, v2

    .line 57
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->init()V

    .line 58
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragHandler:I

    .line 289
    iput-boolean v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->isDraggingEnabled:Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 63
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->init()V

    .line 64
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragHandler:I

    .line 289
    iput-boolean v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->isDraggingEnabled:Z

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 69
    invoke-direct {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->init()V

    .line 70
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method

.method private drag(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v1

    .line 280
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    const/16 v2, 0x56

    aput-boolean v4, v1, v2

    .line 287
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 282
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 283
    .restart local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 284
    iget v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragPointOffset:I

    sub-int v2, p2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x57

    aput-boolean v4, v1, v2

    .line 286
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mWm:Landroid/view/WindowManager;

    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const/16 v2, 0x58

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mWm:Landroid/view/WindowManager;

    .line 52
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method

.method private startDrag(II)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v9

    .line 175
    invoke-virtual {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 177
    .local v2, "item":Landroid/view/View;
    if-nez v2, :cond_0

    const/16 v0, 0x34

    aput-boolean v10, v9, v0

    .line 226
    :goto_0
    return-void

    .line 179
    :cond_0
    iget v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    invoke-virtual {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 181
    .local v4, "id":J
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragNDropListener:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;

    if-nez v0, :cond_1

    const/16 v0, 0x35

    aput-boolean v10, v9, v0

    .line 184
    :goto_1
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 188
    .local v6, "adapter":Landroid/widget/Adapter;
    instance-of v0, v6, Landroid/widget/WrapperListAdapter;

    if-eqz v0, :cond_2

    const/16 v0, 0x38

    aput-boolean v10, v9, v0

    .line 189
    check-cast v6, Landroid/widget/WrapperListAdapter;

    .end local v6    # "adapter":Landroid/widget/Adapter;
    invoke-interface {v6}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;

    .local v7, "dndAdapter":Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;
    const/16 v0, 0x39

    aput-boolean v10, v9, v0

    move-object v0, v7

    .line 194
    .end local v7    # "dndAdapter":Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;
    :goto_2
    iget v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;->onItemDrag(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;Landroid/view/View;IJ)V

    const/16 v0, 0x3b

    aput-boolean v10, v9, v0

    .line 196
    invoke-virtual {v2, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/16 v0, 0x3c

    aput-boolean v10, v9, v0

    .line 200
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x3d

    aput-boolean v10, v9, v1

    .line 202
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 203
    .local v8, "mWindowParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x30

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 204
    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 205
    iget v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragPointOffset:I

    sub-int v1, p2, v1

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 207
    iput v11, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 208
    iput v11, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 209
    const/16 v1, 0x398

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 214
    const/4 v1, -0x3

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 215
    iput v12, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x3e

    aput-boolean v10, v9, v1

    .line 217
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x3f

    aput-boolean v10, v9, v3

    .line 218
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x40

    aput-boolean v10, v9, v1

    .line 219
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x41

    aput-boolean v10, v9, v0

    .line 221
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, v3, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iput-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    const/16 v0, 0x42

    aput-boolean v10, v9, v0

    .line 224
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x43

    aput-boolean v10, v9, v0

    .line 225
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 226
    const/16 v0, 0x44

    aput-boolean v10, v9, v0

    goto/16 :goto_0

    .line 181
    .end local v8    # "mWindowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/16 v0, 0x36

    aput-boolean v10, v9, v0

    .line 182
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragNDropListener:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;

    iget v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;->onItemDrag(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;Landroid/view/View;IJ)V

    const/16 v0, 0x37

    aput-boolean v10, v9, v0

    goto/16 :goto_1

    .line 191
    .restart local v6    # "adapter":Landroid/widget/Adapter;
    :cond_2
    check-cast v6, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;

    .end local v6    # "adapter":Landroid/widget/Adapter;
    const/16 v0, 0x3a

    aput-boolean v10, v9, v0

    move-object v0, v6

    goto/16 :goto_2
.end method

.method private stopDrag(II)V
    .locals 10

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v9

    .line 234
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    const/16 v1, 0x45

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 271
    .local v3, "item":Landroid/view/View;
    :goto_0
    return-void

    .line 236
    .end local v3    # "item":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 238
    .restart local v3    # "item":Landroid/view/View;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 v1, 0x46

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 257
    :goto_1
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0x4f

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 258
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/16 v1, 0x50

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 260
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragView:Landroid/widget/ImageView;

    const/16 v1, 0x51

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/16 v1, 0x52

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 264
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    const/16 v1, 0x53

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const/4 v1, -0x1

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    const/16 v1, 0x54

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 270
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->invalidateViews()V

    .line 271
    const/16 v1, 0x55

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto :goto_0

    .line 238
    :cond_1
    const/16 v1, 0x47

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 239
    iget v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    .line 241
    .local v6, "id":J
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragNDropListener:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;

    if-nez v1, :cond_2

    const/16 v1, 0x48

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 244
    :goto_2
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 248
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v1, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v1, :cond_3

    const/16 v1, 0x4b

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 249
    check-cast v0, Landroid/widget/WrapperListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;

    .local v8, "dndAdapter":Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;
    const/16 v1, 0x4c

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    move-object v1, v8

    .line 254
    .end local v8    # "dndAdapter":Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;
    :goto_3
    iget v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    move-object v2, p0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;->onItemDrop(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;Landroid/view/View;IIJ)V

    const/16 v1, 0x4e

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto/16 :goto_1

    .line 241
    :cond_2
    const/16 v1, 0x49

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 242
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragNDropListener:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;

    iget v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    move-object v2, p0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;->onItemDrop(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;Landroid/view/View;IIJ)V

    const/16 v1, 0x4a

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto :goto_2

    .line 251
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    const/16 v1, 0x4d

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    move-object v1, v0

    goto :goto_3
.end method


# virtual methods
.method public isDrag(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v5

    .line 88
    iget-boolean v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragMode:Z

    if-eqz v6, :cond_0

    const/16 v3, 0xa

    aput-boolean v4, v5, v3

    move v3, v4

    .line 109
    .local v2, "startposition":I
    :goto_0
    return v3

    .line 89
    .end local v2    # "startposition":I
    :cond_0
    iget v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragHandler:I

    if-nez v6, :cond_1

    const/16 v6, 0xb

    aput-boolean v4, v5, v6

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    const/16 v7, 0xc

    aput-boolean v4, v5, v7

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    const/16 v8, 0xd

    aput-boolean v4, v5, v8

    .line 94
    invoke-virtual {p0, v6, v7}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->pointToPosition(II)I

    move-result v2

    .line 96
    .restart local v2    # "startposition":I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    const/16 v6, 0xe

    aput-boolean v4, v5, v6

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v2, v8

    const/16 v9, 0xf

    aput-boolean v4, v5, v9

    .line 99
    invoke-virtual {p0, v8}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x10

    aput-boolean v4, v5, v9

    .line 100
    iget v9, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragHandler:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "handler":Landroid/view/View;
    if-nez v0, :cond_3

    const/16 v6, 0x11

    aput-boolean v4, v5, v6

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0x12

    aput-boolean v4, v5, v10

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v9

    const/16 v11, 0x13

    aput-boolean v4, v5, v11

    .line 106
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v8, v11

    const/16 v11, 0x14

    aput-boolean v4, v5, v11

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int v1, v8, v11

    .line 109
    .local v1, "right":I
    if-le v8, v6, :cond_4

    const/16 v6, 0x15

    aput-boolean v4, v5, v6

    :goto_1
    const/16 v6, 0x1a

    aput-boolean v4, v5, v6

    :goto_2
    const/16 v6, 0x1b

    aput-boolean v4, v5, v6

    goto :goto_0

    :cond_4
    if-le v6, v1, :cond_5

    const/16 v6, 0x16

    aput-boolean v4, v5, v6

    goto :goto_1

    :cond_5
    if-le v9, v7, :cond_6

    const/16 v6, 0x17

    aput-boolean v4, v5, v6

    goto :goto_1

    :cond_6
    if-le v7, v10, :cond_7

    const/16 v6, 0x18

    aput-boolean v4, v5, v6

    goto :goto_1

    :cond_7
    const/16 v3, 0x19

    aput-boolean v4, v5, v3

    move v3, v4

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v3

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v4, 0x1c

    aput-boolean v1, v3, v4

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0x1d

    aput-boolean v1, v3, v5

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    const/16 v6, 0x1e

    aput-boolean v1, v3, v6

    .line 127
    if-eqz v2, :cond_0

    const/16 v6, 0x1f

    aput-boolean v1, v3, v6

    .line 129
    :goto_0
    iget-boolean v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragMode:Z

    if-nez v6, :cond_2

    const/16 v2, 0x22

    aput-boolean v1, v3, v2

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/16 v4, 0x24

    aput-boolean v1, v3, v4

    move v1, v2

    .line 165
    .local v0, "actualPosition":I
    :goto_2
    return v1

    .line 127
    .end local v0    # "actualPosition":I
    :cond_0
    invoke-virtual {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->isDrag(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x20

    aput-boolean v1, v3, v6

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragMode:Z

    const/16 v6, 0x21

    aput-boolean v1, v3, v6

    goto :goto_0

    .line 129
    :cond_2
    iget-boolean v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->isDraggingEnabled:Z

    if-nez v6, :cond_3

    const/16 v2, 0x23

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 131
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 151
    :pswitch_0
    iput-boolean v7, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragMode:Z

    .line 154
    iget v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    if-ne v2, v8, :cond_5

    const/16 v2, 0x2d

    aput-boolean v1, v3, v2

    .line 165
    .restart local v0    # "actualPosition":I
    :goto_3
    const/16 v2, 0x33

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 133
    .end local v0    # "actualPosition":I
    :pswitch_1
    invoke-virtual {p0, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    .line 135
    iget v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    if-ne v2, v8, :cond_4

    const/16 v2, 0x25

    aput-boolean v1, v3, v2

    goto :goto_3

    :cond_4
    const/16 v2, 0x26

    aput-boolean v1, v3, v2

    .line 136
    iget v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v2, v4

    const/16 v4, 0x27

    aput-boolean v1, v3, v4

    .line 137
    invoke-virtual {p0, v2}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v5, v4

    iput v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragPointOffset:I

    const/16 v4, 0x28

    aput-boolean v1, v3, v4

    .line 138
    iget v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragPointOffset:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    sub-int/2addr v4, v6

    iput v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragPointOffset:I

    const/16 v4, 0x29

    aput-boolean v1, v3, v4

    .line 140
    invoke-direct {p0, v2, v5}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->startDrag(II)V

    const/16 v2, 0x2a

    aput-boolean v1, v3, v2

    .line 141
    invoke-direct {p0, v7, v5}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->drag(II)V

    .line 142
    const/16 v2, 0x2b

    aput-boolean v1, v3, v2

    goto :goto_3

    .line 146
    :pswitch_2
    invoke-direct {p0, v7, v5}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->drag(II)V

    .line 147
    const/16 v2, 0x2c

    aput-boolean v1, v3, v2

    goto :goto_3

    .line 154
    :cond_5
    const/16 v2, 0x2e

    aput-boolean v1, v3, v2

    .line 156
    invoke-virtual {p0, v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->pointToPosition(II)I

    move-result v0

    const/16 v2, 0x2f

    aput-boolean v1, v3, v2

    .line 157
    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_6

    const/16 v2, 0x30

    aput-boolean v1, v3, v2

    .line 160
    .restart local v0    # "actualPosition":I
    :goto_4
    iget v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mStartPosition:I

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-direct {p0, v2, v0}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->stopDrag(II)V

    const/16 v2, 0x32

    aput-boolean v1, v3, v2

    goto/16 :goto_3

    .line 158
    .end local v0    # "actualPosition":I
    :cond_6
    const/4 v0, -0x1

    .restart local v0    # "actualPosition":I
    const/16 v2, 0x31

    aput-boolean v1, v3, v2

    goto :goto_4

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDragNDropAdapter(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    invoke-interface {p1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropAdapter;->getDragHandler()I

    move-result v1

    iput v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragHandler:I

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 78
    invoke-virtual {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOnItemDragNDropListener(Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView;->mDragNDropListener:Lpl/com/andrzejgrzyb/shoppinglist/DragNDropList/DragNDropListView$OnItemDragNDropListener;

    .line 74
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
