.class public Landroid/support/v7/widget/z;
.super Landroid/widget/ImageButton;

# interfaces
.implements Landroid/support/v4/i/bn;


# instance fields
.field private a:Landroid/support/v7/widget/t;

.field private b:Landroid/support/v7/widget/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/b/b;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/support/v7/internal/widget/ao;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/t;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/t;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/ao;)V

    iput-object v1, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v1, p2, p3}, Landroid/support/v7/widget/t;->a(Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/support/v7/widget/aa;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/aa;-><init>(Landroid/widget/ImageView;Landroid/support/v7/internal/widget/ao;)V

    iput-object v1, p0, Landroid/support/v7/widget/z;->b:Landroid/support/v7/widget/aa;

    iget-object v0, p0, Landroid/support/v7/widget/z;->b:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/aa;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->c()V

    :cond_0
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

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

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

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

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(I)V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->b:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aa;->a(I)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
