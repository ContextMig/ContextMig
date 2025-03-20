.class public abstract Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "VerticalScrollingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior$ScrollDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mOverScrollDirection:I

.field private mScrollDirection:I

.field private mTotalDy:I

.field private mTotalDyUnconsumed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 22
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    .line 23
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDy:I

    .line 24
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mOverScrollDirection:I

    .line 26
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mScrollDirection:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    .line 23
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDy:I

    .line 24
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mOverScrollDirection:I

    .line 26
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mScrollDirection:I

    .line 31
    return-void
.end method


# virtual methods
.method public getOverScrollDirection()I
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mOverScrollDirection:I

    return v0
.end method

.method public getScrollDirection()I
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mScrollDirection:I

    return v0
.end method

.method public onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/support/v4/view/WindowInsetsCompat;",
            ")",
            "Landroid/support/v4/view/WindowInsetsCompat;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public abstract onDirectionNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation
.end method

.method protected abstract onNestedDirectionFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFI)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFI)Z"
        }
    .end annotation
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    .line 126
    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mScrollDirection:I

    .line 127
    iget v6, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mScrollDirection:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->onNestedDirectionFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFI)Z

    move-result v0

    return v0

    .line 126
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 8
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    .line 110
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 111
    if-lez p5, :cond_1

    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDy:I

    if-gez v0, :cond_1

    .line 112
    iput v1, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDy:I

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mScrollDirection:I

    .line 118
    :cond_0
    :goto_0
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDy:I

    add-int/2addr v0, p5

    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDy:I

    .line 119
    iget v7, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mScrollDirection:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->onDirectionNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 120
    return-void

    .line 114
    :cond_1
    if-gez p5, :cond_0

    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDy:I

    if-lez v0, :cond_0

    .line 115
    iput v1, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDy:I

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mScrollDirection:I

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    .line 96
    invoke-super/range {p0 .. p7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 97
    if-lez p7, :cond_1

    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    if-gez v0, :cond_1

    .line 98
    iput v1, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mOverScrollDirection:I

    .line 104
    :cond_0
    :goto_0
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    add-int/2addr v0, p7

    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    .line 105
    iget v3, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mOverScrollDirection:I

    iget v5, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->onNestedVerticalOverScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)V

    .line 106
    return-void

    .line 100
    :cond_1
    if-gez p7, :cond_0

    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    if-lez v0, :cond_0

    .line 101
    iput v1, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mTotalDyUnconsumed:I

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->mOverScrollDirection:I

    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 87
    return-void
.end method

.method public abstract onNestedVerticalOverScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)V"
        }
    .end annotation
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;, "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 92
    return-void
.end method
