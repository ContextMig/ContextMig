.class public Landroid/support/v4/view/NestedScrollingParentHelper;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field private mNestedScrollAxes:I

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingParentHelper;->mViewGroup:Landroid/view/ViewGroup;

    .line 51
    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    return v0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 64
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .prologue
    .line 76
    iput p3, p0, Landroid/support/v4/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    .line 77
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 100
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/NestedScrollingParentHelper;->mNestedScrollAxes:I

    .line 111
    return-void
.end method
