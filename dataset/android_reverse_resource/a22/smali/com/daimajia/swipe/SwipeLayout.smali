.class public Lcom/daimajia/swipe/SwipeLayout;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final c:Lcom/daimajia/swipe/d;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnLongClickListener;

.field private d:I

.field private e:Lcom/daimajia/swipe/d;

.field private f:Landroid/support/v4/widget/ca;

.field private g:I

.field private h:Ljava/util/LinkedHashMap;

.field private i:Lcom/daimajia/swipe/g;

.field private j:[F

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:Ljava/util/Map;

.field private n:Ljava/util/Map;

.field private o:Lcom/daimajia/swipe/c;

.field private p:Z

.field private q:[Z

.field private r:Z

.field private s:Landroid/support/v4/widget/cb;

.field private t:I

.field private u:Ljava/util/List;

.field private v:Z

.field private w:F

.field private x:F

.field private y:Landroid/graphics/Rect;

.field private z:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout;->c:Lcom/daimajia/swipe/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/daimajia/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/daimajia/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/daimajia/swipe/SwipeLayout;->c:Lcom/daimajia/swipe/d;

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    iput v1, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->l:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->p:Z

    new-array v0, v7, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    iput-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$1;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$1;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->s:Landroid/support/v4/widget/cb;

    iput v1, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    iput v2, p0, Lcom/daimajia/swipe/SwipeLayout;->w:F

    iput v2, p0, Lcom/daimajia/swipe/SwipeLayout;->x:F

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/daimajia/swipe/j;

    invoke-direct {v2, p0}, Lcom/daimajia/swipe/j;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->z:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->s:Landroid/support/v4/widget/cb;

    invoke-static {p0, v0}, Landroid/support/v4/widget/ca;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/cb;)Landroid/support/v4/widget/ca;

    move-result-object v0

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    sget-object v0, Lcom/daimajia/swipe/b;->SwipeLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/daimajia/swipe/b;->SwipeLayout_drag_edge:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    sget-object v3, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    invoke-virtual {v3}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v3

    sget v4, Lcom/daimajia/swipe/b;->SwipeLayout_leftEdgeSwipeOffset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    sget-object v3, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    invoke-virtual {v3}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v3

    sget v4, Lcom/daimajia/swipe/b;->SwipeLayout_rightEdgeSwipeOffset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    sget-object v3, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    invoke-virtual {v3}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v3

    sget v4, Lcom/daimajia/swipe/b;->SwipeLayout_topEdgeSwipeOffset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    sget-object v3, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    invoke-virtual {v3}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v3

    sget v4, Lcom/daimajia/swipe/b;->SwipeLayout_bottomEdgeSwipeOffset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    sget v2, Lcom/daimajia/swipe/b;->SwipeLayout_clickToClose:I

    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/daimajia/swipe/SwipeLayout;->setClickToClose(Z)V

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    invoke-virtual {v2, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    invoke-virtual {v2, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    invoke-virtual {v2, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    invoke-virtual {v1, v2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget v1, Lcom/daimajia/swipe/b;->SwipeLayout_show_mode:I

    sget-object v2, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    invoke-virtual {v2}, Lcom/daimajia/swipe/g;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {}, Lcom/daimajia/swipe/g;->values()[Lcom/daimajia/swipe/g;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/g;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private a(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/daimajia/swipe/SwipeLayout;Lcom/daimajia/swipe/d;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/d;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/daimajia/swipe/d;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    sget-object v2, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    sget-object v2, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne p1, v2, :cond_3

    :cond_1
    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int v3, v1, v2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    :cond_2
    sget-object v2, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v2

    add-int v3, v1, v2

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private a(Lcom/daimajia/swipe/g;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v5

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne p1, v6, :cond_7

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v4, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne v3, v4, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v1, v3

    :goto_0
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v4, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v4, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v3, v4, :cond_5

    :cond_0
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-nez v5, :cond_4

    :goto_1
    add-int/2addr v2, v1

    move v7, v3

    move v3, v1

    move v1, v2

    move v2, v0

    move v0, v7

    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    :cond_1
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v4, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v3, v4, :cond_2

    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v3, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne v0, v3, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    :goto_3
    add-int/2addr v2, v0

    iget v3, p2, Landroid/graphics/Rect;->right:I

    move v7, v2

    move v2, v0

    move v0, v7

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/daimajia/swipe/g;->a:Lcom/daimajia/swipe/g;

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v5, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne v2, v5, :cond_8

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v2, v1

    move v7, v3

    move v3, v1

    move v1, v2

    move v2, v0

    move v0, v7

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v5, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v2, v5, :cond_9

    iget v1, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int v1, v4, v1

    move v2, v0

    move v0, v3

    move v3, v1

    move v1, v4

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v5, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne v2, v5, :cond_a

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v2, v0

    move v3, v1

    move v1, v4

    move v7, v0

    move v0, v2

    move v2, v7

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int v0, v3, v0

    move v2, v0

    move v0, v3

    move v3, v1

    move v1, v4

    goto :goto_2

    :cond_b
    move v2, v0

    move v0, v3

    move v3, v1

    move v1, v4

    goto :goto_2
.end method

.method static synthetic a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 11

    const/high16 v10, 0x42700000    # 60.0f

    const/high16 v9, 0x41f00000    # 30.0f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v0

    sget-object v3, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->w:F

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v5, p0, Lcom/daimajia/swipe/SwipeLayout;->x:F

    sub-float v5, v0, v5

    div-float v0, v5, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v0

    sget-object v7, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-ne v0, v7, :cond_3

    const/high16 v0, 0x42340000    # 45.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_18

    cmpl-float v0, v3, v8

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    :goto_1
    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/d;)V

    :cond_3
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v7, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v0, v7, :cond_23

    sget-object v0, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    if-ne v4, v0, :cond_4

    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-ne v4, v0, :cond_1a

    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1a

    :cond_5
    move v0, v2

    :goto_2
    if-nez v0, :cond_6

    sget-object v0, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    if-ne v4, v0, :cond_1b

    :cond_6
    move v0, v2

    :goto_3
    cmpl-float v7, v6, v9

    if-gtz v7, :cond_7

    if-nez v0, :cond_23

    :cond_7
    move v0, v2

    :goto_4
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v8, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne v7, v8, :cond_c

    sget-object v7, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    if-ne v4, v7, :cond_8

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_9

    :cond_8
    sget-object v7, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-ne v4, v7, :cond_1c

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1c

    :cond_9
    move v3, v2

    :goto_5
    if-nez v3, :cond_a

    sget-object v3, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    if-ne v4, v3, :cond_1d

    :cond_a
    move v3, v2

    :goto_6
    cmpl-float v7, v6, v9

    if-gtz v7, :cond_b

    if-nez v3, :cond_c

    :cond_b
    move v0, v2

    :cond_c
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v7, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne v3, v7, :cond_11

    sget-object v3, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    if-ne v4, v3, :cond_d

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-ltz v3, :cond_e

    :cond_d
    sget-object v3, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-ne v4, v3, :cond_1e

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1e

    :cond_e
    move v3, v2

    :goto_7
    if-nez v3, :cond_f

    sget-object v3, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    if-ne v4, v3, :cond_1f

    :cond_f
    move v3, v2

    :goto_8
    cmpg-float v7, v6, v10

    if-ltz v7, :cond_10

    if-nez v3, :cond_11

    :cond_10
    move v0, v2

    :cond_11
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v7, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    if-ne v3, v7, :cond_16

    sget-object v3, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    if-ne v4, v3, :cond_12

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-gtz v3, :cond_13

    :cond_12
    sget-object v3, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-ne v4, v3, :cond_20

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_20

    :cond_13
    move v3, v2

    :goto_9
    if-nez v3, :cond_14

    sget-object v3, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    if-ne v4, v3, :cond_21

    :cond_14
    move v3, v2

    :goto_a
    cmpg-float v4, v6, v10

    if-ltz v4, :cond_15

    if-nez v3, :cond_16

    :cond_15
    move v0, v2

    :cond_16
    if-nez v0, :cond_22

    :goto_b
    iput-boolean v2, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    goto/16 :goto_0

    :cond_17
    cmpg-float v0, v3, v8

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    goto/16 :goto_1

    :cond_18
    cmpl-float v0, v5, v8

    if-lez v0, :cond_19

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    goto/16 :goto_1

    :cond_19
    cmpg-float v0, v5, v8

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    goto/16 :goto_1

    :cond_1a
    move v0, v1

    goto/16 :goto_2

    :cond_1b
    move v0, v1

    goto/16 :goto_3

    :cond_1c
    move v3, v1

    goto/16 :goto_5

    :cond_1d
    move v3, v1

    goto/16 :goto_6

    :cond_1e
    move v3, v1

    goto :goto_7

    :cond_1f
    move v3, v1

    goto :goto_8

    :cond_20
    move v3, v1

    goto :goto_9

    :cond_21
    move v3, v1

    goto :goto_a

    :cond_22
    move v2, v1

    goto :goto_b

    :cond_23
    move v0, v1

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/daimajia/swipe/SwipeLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/daimajia/swipe/SwipeLayout;)I
    .locals 1

    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    return v0
.end method

.method private b(Z)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v3, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v1, v2

    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v3, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v2, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    :cond_1
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/g;
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/g;

    return-object v0
.end method

.method static synthetic d(Lcom/daimajia/swipe/SwipeLayout;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->l()V

    return-void
.end method

.method static synthetic f(Lcom/daimajia/swipe/SwipeLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/daimajia/swipe/SwipeLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    return v0
.end method

.method private getAdapterView()Landroid/widget/AdapterView;
    .locals 2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentOffset()F
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/c;
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->o:Lcom/daimajia/swipe/c;

    return-object v0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private k()Z
    .locals 1

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 6

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method private m()Z
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-eq v0, v1, :cond_1

    move v0, v6

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_3

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v2, "performLongPress"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v2, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v1, v6}, Landroid/widget/AdapterView;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method private n()V
    .locals 3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v2, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v2, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentOffset()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/g;

    sget-object v1, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->a()V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->j()V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentOffset()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/g;

    sget-object v1, Lcom/daimajia/swipe/g;->a:Lcom/daimajia/swipe/g;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->b()V

    goto :goto_1
.end method

.method private setCurrentDragEdge(Lcom/daimajia/swipe/d;)V
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->n()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v0, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v0, p0, :cond_1

    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method a()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->b(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    sget-object v1, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    invoke-direct {p0, v1, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/g;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected a(FFZ)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {v0}, Landroid/support/v4/widget/ca;->a()F

    move-result v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const/high16 v0, 0x3e800000    # 0.25f

    :goto_1
    sget-object v3, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_6

    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_3
    neg-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_a

    cmpl-float v2, p1, v1

    if-lez v2, :cond_7

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    :cond_7
    neg-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_8

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    :cond_a
    sget-object v3, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_e

    cmpl-float v2, p2, v1

    if-lez v2, :cond_b

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    :cond_b
    neg-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_c

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto/16 :goto_0

    :cond_e
    sget-object v3, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_f

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto/16 :goto_0

    :cond_f
    neg-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_10

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto/16 :goto_0
.end method

.method protected a(IIII)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getDragEdge()Lcom/daimajia/swipe/d;

    move-result-object v2

    const/4 v1, 0x1

    sget-object v3, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_1

    if-gez p3, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(IIZ)V

    return-void

    :cond_1
    sget-object v3, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_3

    if-gtz p3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_4

    if-gez p4, :cond_2

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    if-ne v2, v3, :cond_2

    if-lez p4, :cond_2

    goto :goto_0
.end method

.method protected a(IIZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->j()V

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/k;

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    if-ne v3, v6, :cond_0

    if-eqz p3, :cond_1

    invoke-interface {v0, p0}, Lcom/daimajia/swipe/k;->a(Lcom/daimajia/swipe/SwipeLayout;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, p2, v4

    invoke-interface {v0, p0, v3, v4}, Lcom/daimajia/swipe/k;->a(Lcom/daimajia/swipe/SwipeLayout;II)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p0}, Lcom/daimajia/swipe/k;->c(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/k;

    invoke-interface {v0, p0}, Lcom/daimajia/swipe/k;->d(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_2

    :cond_3
    iput v5, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    :cond_4
    sget-object v0, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    if-ne v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/k;

    invoke-interface {v0, p0}, Lcom/daimajia/swipe/k;->b(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_3

    :cond_6
    iput v5, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    :cond_7
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/daimajia/swipe/SwipeLayout;->b(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/daimajia/swipe/SwipeLayout;->b(Z)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v3, v2}, Landroid/support/v4/widget/ca;->a(Landroid/view/View;II)Z

    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/g;

    move-result-object v0

    sget-object v5, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v0, v5, :cond_2

    sget-object v0, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    invoke-direct {p0, v0, v2}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/g;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v1, :cond_2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    if-eqz p2, :cond_3

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/daimajia/swipe/SwipeLayout;->b(IIII)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/daimajia/swipe/SwipeLayout;->a(IIII)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->j()V

    goto :goto_1
.end method

.method protected a(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/d;IIII)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/g;

    move-result-object v6

    sget-object v7, Lcom/daimajia/swipe/g;->a:Lcom/daimajia/swipe/g;

    if-ne v6, v7, :cond_5

    sget-object v6, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne p3, v6, :cond_1

    if-le p6, v0, :cond_4

    :cond_1
    sget-object v0, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne p3, v0, :cond_2

    if-ge p4, v3, :cond_4

    :cond_2
    sget-object v0, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne p3, v0, :cond_3

    if-ge p5, v5, :cond_4

    :cond_3
    sget-object v0, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    if-ne p3, v0, :cond_a

    if-gt p7, v4, :cond_a

    :cond_4
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/g;

    move-result-object v6

    sget-object v7, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v6, v7, :cond_a

    sget-object v6, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne p3, v6, :cond_6

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v6

    if-le v3, v6, :cond_9

    :cond_6
    sget-object v3, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne p3, v3, :cond_7

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    if-ge v0, v3, :cond_9

    :cond_7
    sget-object v0, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne p3, v0, :cond_8

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-ge v4, v0, :cond_9

    :cond_8
    sget-object v0, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    if-ne p3, v0, :cond_a

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v0

    if-gt v5, v0, :cond_a

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "gravity"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/bx;->h(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->a(II)I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    and-int/lit8 v0, v0, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_7

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method b()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->b(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    sget-object v1, Lcom/daimajia/swipe/g;->a:Lcom/daimajia/swipe/g;

    invoke-direct {p0, v1, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/g;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected b(IIII)V
    .locals 10

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/daimajia/swipe/SwipeLayout;->b(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/d;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/g;

    move-result-object v4

    sget-object v5, Lcom/daimajia/swipe/g;->a:Lcom/daimajia/swipe/g;

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    invoke-virtual {v5}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    move v4, v3

    move v3, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/f;

    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-interface {v0, v1, v6, v7, v4}, Lcom/daimajia/swipe/f;->a(Landroid/view/View;Lcom/daimajia/swipe/d;FI)V

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_0
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, p1

    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_0

    :pswitch_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, p3

    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_0

    :pswitch_2
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, p2

    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_0

    :pswitch_3
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, p4

    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/g;

    move-result-object v4

    sget-object v5, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    invoke-virtual {v5}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :cond_5
    move v4, v3

    move v3, v0

    goto :goto_1

    :pswitch_4
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    move v4, v3

    move v3, v0

    goto/16 :goto_1

    :pswitch_5
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    move v4, v3

    move v3, v0

    goto/16 :goto_1

    :pswitch_6
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    move v4, v3

    move v3, v0

    goto/16 :goto_1

    :pswitch_7
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    move v4, v3

    move v3, v0

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/daimajia/swipe/SwipeLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/d;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/f;

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v4, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    sget-object v4, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v3, v4, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/daimajia/swipe/f;->a(Landroid/view/View;Lcom/daimajia/swipe/d;FI)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/daimajia/swipe/f;->a(Landroid/view/View;Lcom/daimajia/swipe/d;FI)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b(ZZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ca;->a(Landroid/view/View;II)Z

    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Z)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    if-eqz p2, :cond_2

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/daimajia/swipe/SwipeLayout;->b(IIII)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/daimajia/swipe/SwipeLayout;->a(IIII)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->j()V

    goto :goto_1
.end method

.method protected b(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/d;IIII)Z
    .locals 7

    const/4 v0, 0x1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/g;

    move-result-object v5

    sget-object v6, Lcom/daimajia/swipe/g;->a:Lcom/daimajia/swipe/g;

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    invoke-virtual {p3}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    if-le p6, v1, :cond_0

    if-gt p6, v2, :cond_0

    goto :goto_1

    :pswitch_1
    if-ge p4, v2, :cond_0

    if-lt p4, v1, :cond_0

    goto :goto_1

    :pswitch_2
    if-lt p5, v3, :cond_0

    if-ge p5, v4, :cond_0

    goto :goto_1

    :pswitch_3
    if-le p7, v3, :cond_0

    if-gt p7, v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/g;

    move-result-object v5

    sget-object v6, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    invoke-virtual {p3}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-lt v4, v1, :cond_0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v3

    if-gt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v1

    if-le v2, v1, :cond_0

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-lt v3, v1, :cond_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->p:Z

    return v0
.end method

.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ca;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/bx;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomViews()Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/daimajia/swipe/d;->values()[Lcom/daimajia/swipe/d;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCurrentBottomView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragDistance()I
    .locals 1

    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    return v0
.end method

.method public getDragEdge()Lcom/daimajia/swipe/d;
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/d;

    return-object v0
.end method

.method public getDragEdgeMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDragEdges()Ljava/util/List;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOpenStatus()Lcom/daimajia/swipe/h;
    .locals 4

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    goto :goto_0
.end method

.method public getShowMode()Lcom/daimajia/swipe/g;
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/g;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(ZZ)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/daimajia/swipe/SwipeLayout;->b(ZZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->a:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$2;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$2;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->b:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$3;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$3;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v0

    sget-object v3, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    if-ne v0, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/i;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/daimajia/swipe/i;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ca;->b(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ca;->b(Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->w:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->x:F

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    if-ne v0, v1, :cond_4

    iput-boolean v2, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->a(Landroid/view/MotionEvent;)V

    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ca;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->n()V

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/e;

    invoke-interface {v0, p0}, Lcom/daimajia/swipe/e;->a(Lcom/daimajia/swipe/SwipeLayout;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->z:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    packed-switch v2, :pswitch_data_0

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ca;->b(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ca;->b(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/daimajia/swipe/SwipeLayout;->w:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/daimajia/swipe/SwipeLayout;->x:F

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->a(Landroid/view/MotionEvent;)V

    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ca;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iput-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroid/support/v4/widget/ca;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ca;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBottomSwipeEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    return-void
.end method

.method public setClickToClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    return-void
.end method

.method public setDragDistance(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(F)I

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->requestLayout()V

    return-void
.end method

.method public setDragEdge(Lcom/daimajia/swipe/d;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/d;)V

    return-void
.end method

.method public setDragEdges(Ljava/util/List;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/d;

    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/daimajia/swipe/SwipeLayout;->c:Lcom/daimajia/swipe/d;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout;->c:Lcom/daimajia/swipe/d;

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/d;)V

    :goto_1
    return-void

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/d;

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/d;)V

    goto :goto_1
.end method

.method public varargs setDragEdges([Lcom/daimajia/swipe/d;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setDragEdges(Ljava/util/List;)V

    return-void
.end method

.method public setLeftSwipeEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleClickListener(Lcom/daimajia/swipe/c;)V
    .locals 0

    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->o:Lcom/daimajia/swipe/c;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->b:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setRightSwipeEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    return-void
.end method

.method public setShowMode(Lcom/daimajia/swipe/g;)V
    .locals 0

    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/g;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->requestLayout()V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/daimajia/swipe/SwipeLayout;->p:Z

    return-void
.end method

.method public setTopSwipeEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    return-void
.end method
