.class public Landroid/support/v7/widget/ar;
.super Landroid/widget/TextView;

# interfaces
.implements Landroid/support/v4/i/bn;


# instance fields
.field private a:Landroid/support/v7/internal/widget/ao;

.field private b:Landroid/support/v7/widget/t;

.field private c:Landroid/support/v7/widget/ap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/ao;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ar;->a:Landroid/support/v7/internal/widget/ao;

    new-instance v0, Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->a:Landroid/support/v7/internal/widget/ao;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/t;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/t;->a(Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Landroid/support/v7/widget/ap;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ap;

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ap;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/ap;->a(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/widget/ap;->a()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->c()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/widget/ap;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->b:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
