.class public Landroid/support/v7/widget/s;
.super Landroid/widget/AutoCompleteTextView;

# interfaces
.implements Landroid/support/v4/i/bn;


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/internal/widget/ao;

.field private c:Landroid/support/v7/widget/t;

.field private d:Landroid/support/v7/widget/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/s;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/b/b;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/support/v7/internal/widget/al;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/s;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Landroid/support/v7/internal/widget/aq;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/aq;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->b()Landroid/support/v7/internal/widget/ao;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/aq;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/aq;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->a()V

    new-instance v0, Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/internal/widget/ao;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/t;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/t;->a(Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Landroid/support/v7/widget/ap;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/ap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s;->d:Landroid/support/v7/widget/ap;

    iget-object v0, p0, Landroid/support/v7/widget/s;->d:Landroid/support/v7/widget/ap;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/ap;->a(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v7/widget/s;->d:Landroid/support/v7/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/widget/ap;->a()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->c()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->d:Landroid/support/v7/widget/ap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/s;->d:Landroid/support/v7/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/widget/ap;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

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

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

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

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(I)V

    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/internal/widget/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ao;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroid/support/v7/widget/s;->d:Landroid/support/v7/widget/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->d:Landroid/support/v7/widget/ap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
