.class public Lcom/fsck/k9/view/NonLockingScrollView;
.super Landroid/widget/ScrollView;
.source "NonLockingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;
    }
.end annotation


# instance fields
.field private final mChildrenNeedingAllTouches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInCustomDrag:Z

.field private mSkipWebViewScroll:Z

.field private final sHitFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mSkipWebViewScroll:Z

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mSkipWebViewScroll:Z

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mSkipWebViewScroll:Z

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/view/NonLockingScrollView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/view/NonLockingScrollView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/List;

    return-object v0
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionMasked(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private isEventOverChild(Landroid/view/MotionEvent;Ljava/util/List;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 117
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/fsck/k9/view/NonLockingScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 118
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/fsck/k9/view/NonLockingScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 120
    .local v3, "y":F
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 121
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Lcom/fsck/k9/view/NonLockingScrollView;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    iget-object v5, p0, Lcom/fsck/k9/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 127
    iget-object v5, p0, Lcom/fsck/k9/view/NonLockingScrollView;->sHitFrame:Landroid/graphics/Rect;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    const/4 v4, 0x1

    .line 131
    .end local v1    # "child":Landroid/view/View;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setupDelegationOfTouchAndHierarchyChangeEvents()V
    .locals 4

    .prologue
    .line 107
    new-instance v2, Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;

    invoke-direct {v2, p0}, Lcom/fsck/k9/view/NonLockingScrollView$HierarchyTreeChangeListener;-><init>(Lcom/fsck/k9/view/NonLockingScrollView;)V

    .line 108
    .local v2, "listener":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/view/NonLockingScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/fsck/k9/view/NonLockingScrollView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/NonLockingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 103
    invoke-direct {p0}, Lcom/fsck/k9/view/NonLockingScrollView;->setupDelegationOfTouchAndHierarchyChangeEvents()V

    .line 104
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/NonLockingScrollView;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 70
    .local v0, "action":I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 72
    .local v1, "isUp":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v4, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mInCustomDrag:Z

    if-eqz v4, :cond_1

    .line 75
    iput-boolean v3, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 76
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/NonLockingScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 92
    :goto_1
    return v2

    .end local v1    # "isUp":Z
    :cond_0
    move v1, v3

    .line 70
    goto :goto_0

    .line 80
    .restart local v1    # "isUp":Z
    :cond_1
    iget-boolean v2, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mInCustomDrag:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mChildrenNeedingAllTouches:Ljava/util/List;

    invoke-direct {p0, p1, v2}, Lcom/fsck/k9/view/NonLockingScrollView;->isEventOverChild(Landroid/view/MotionEvent;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 86
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mInCustomDrag:Z

    .line 87
    iget-boolean v2, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mInCustomDrag:Z

    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/NonLockingScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    move v2, v3

    .line 92
    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 146
    iget-boolean v1, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mSkipWebViewScroll:Z

    if-eqz v1, :cond_1

    instance-of v1, p2, Lcom/fsck/k9/view/MessageWebView;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 148
    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fsck/k9/view/NonLockingScrollView;->mSkipWebViewScroll:Z

    .line 150
    invoke-super {p0, p1, p1}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/fsck/k9/view/NonLockingScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 152
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 158
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method
