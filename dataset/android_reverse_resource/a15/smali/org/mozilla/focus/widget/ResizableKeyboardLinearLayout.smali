.class public Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ResizableKeyboardLinearLayout.java"


# instance fields
.field private final delegate:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;->delegate:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    .line 30
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 35
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;->delegate:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-virtual {v0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->onAttachedToWindow()V

    .line 36
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 42
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;->delegate:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-virtual {v0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->onDetachedFromWindow()V

    .line 43
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardLinearLayout;->delegate:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-virtual {v0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->reset()V

    .line 47
    return-void
.end method
