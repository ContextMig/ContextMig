.class public Landroid/support/v7/widget/v;
.super Landroid/widget/CheckBox;

# interfaces
.implements Landroid/support/v4/widget/bi;


# instance fields
.field private a:Landroid/support/v7/internal/widget/ao;

.field private b:Landroid/support/v7/widget/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/b/b;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/support/v7/internal/widget/ao;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/internal/widget/ao;

    new-instance v0, Landroid/support/v7/widget/x;

    iget-object v1, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/internal/widget/ao;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/x;-><init>(Landroid/widget/CompoundButton;Landroid/support/v7/internal/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/x;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/x;->a(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/internal/widget/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ao;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/v;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/c/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    invoke-virtual {v0}, Landroid/support/v7/widget/x;->c()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/x;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v7/widget/x;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/x;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
