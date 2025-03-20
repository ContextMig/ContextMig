.class public Lorg/mozilla/focus/webview/NestedWebView;
.super Landroid/webkit/WebView;
.source "NestedWebView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;


# instance fields
.field private final mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mLastY:I

.field private mNestedOffsetY:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollConsumed:[I

    .line 36
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/webview/NestedWebView;->setNestedScrollingEnabled(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 128
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 123
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 42
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 43
    .local v7, "event":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 45
    .local v6, "action":I
    if-nez v6, :cond_0

    .line 46
    iput v1, p0, Lorg/mozilla/focus/webview/NestedWebView;->mNestedOffsetY:I

    .line 49
    :cond_0
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v9, v0

    .line 50
    .local v9, "eventY":I
    iget v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mNestedOffsetY:I

    int-to-float v0, v0

    invoke-virtual {v7, v11, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 52
    packed-switch v6, :pswitch_data_0

    .line 86
    :cond_1
    :goto_0
    invoke-super {p0, v7}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 89
    .local v8, "eventHandled":Z
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 91
    return v8

    .line 54
    .end local v8    # "eventHandled":Z
    :pswitch_0
    iget v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mLastY:I

    sub-int v4, v0, v9

    .line 56
    .local v4, "deltaY":I
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollConsumed:[I

    iget-object v2, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    invoke-virtual {p0, v1, v4, v0, v2}, Lorg/mozilla/focus/webview/NestedWebView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollConsumed:[I

    aget v0, v0, v10

    sub-int/2addr v4, v0

    .line 58
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    aget v0, v0, v10

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v7, v11, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 59
    iget v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mNestedOffsetY:I

    iget-object v2, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    aget v2, v2, v10

    add-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mNestedOffsetY:I

    .line 62
    :cond_2
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    aget v0, v0, v10

    sub-int v0, v9, v0

    iput v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mLastY:I

    .line 64
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    aget v2, v0, v10

    iget-object v5, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/focus/webview/NestedWebView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mLastY:I

    iget-object v1, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    aget v1, v1, v10

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mLastY:I

    .line 66
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    aget v0, v0, v10

    int-to-float v0, v0

    invoke-virtual {v7, v11, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 67
    iget v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mNestedOffsetY:I

    iget-object v1, p0, Lorg/mozilla/focus/webview/NestedWebView;->mScrollOffset:[I

    aget v1, v1, v10

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mNestedOffsetY:I

    goto :goto_0

    .line 72
    .end local v4    # "deltaY":I
    :pswitch_1
    iput v9, p0, Lorg/mozilla/focus/webview/NestedWebView;->mLastY:I

    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/webview/NestedWebView;->startNestedScroll(I)Z

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {p0}, Lorg/mozilla/focus/webview/NestedWebView;->stopNestedScroll()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 99
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/mozilla/focus/webview/NestedWebView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 114
    return-void
.end method
