.class public Landroid/support/v7/widget/eg;
.super Landroid/support/v7/a/b;


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/b;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/eg;->b:I

    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/eg;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/eg;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/a/b;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/support/v7/a/b;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/eg;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/eg;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/support/v7/a/b;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/eg;->b:I

    iget v0, p1, Landroid/support/v7/widget/eg;->b:I

    iput v0, p0, Landroid/support/v7/widget/eg;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/eg;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/eg;->b:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/eg;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/eg;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/eg;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/eg;->rightMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/eg;->bottomMargin:I

    return-void
.end method
