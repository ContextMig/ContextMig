.class Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;
.super Landroid/support/design/widget/BottomSheetDialog;
.source "OpenWithFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/open/OpenWithFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomWidthBottomSheetDialog"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/mozilla/focus/open/OpenWithFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lorg/mozilla/focus/open/OpenWithFragment$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 98
    .local v0, "width":I
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 99
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 100
    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 103
    .end local v0    # "width":I
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomWidthBottomSheetDialog only supports setContentView(View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 109
    iput-object p1, p0, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;->contentView:Landroid/view/View;

    .line 110
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomWidthBottomSheetDialog only supports setContentView(View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 127
    .local v1, "peekHeight":I
    iget-object v2, p0, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    .line 128
    .local v0, "bsBehaviour":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<Landroid/view/View;>;"
    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 131
    .end local v0    # "bsBehaviour":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<Landroid/view/View;>;"
    .end local v1    # "peekHeight":I
    :cond_0
    invoke-super {p0}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    .line 132
    return-void
.end method
