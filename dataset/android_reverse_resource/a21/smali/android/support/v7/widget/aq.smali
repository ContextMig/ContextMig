.class Landroid/support/v7/widget/aq;
.super Landroid/support/v7/widget/ap;


# static fields
.field private static final b:[I


# instance fields
.field private c:Landroid/support/v7/internal/widget/an;

.field private d:Landroid/support/v7/internal/widget/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/aq;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010392
        0x1010393
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ap;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/ap;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/aq;->c:Landroid/support/v7/internal/widget/an;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aq;->d:Landroid/support/v7/internal/widget/an;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/aq;->c:Landroid/support/v7/internal/widget/an;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/aq;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/internal/widget/an;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/aq;->d:Landroid/support/v7/internal/widget/an;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/aq;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/internal/widget/an;)V

    :cond_1
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ap;->a(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v7/widget/aq;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/ao;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/ao;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/aq;->b:[I

    invoke-virtual {v0, p1, v2, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v7/internal/widget/an;

    invoke-direct {v2}, Landroid/support/v7/internal/widget/an;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/aq;->c:Landroid/support/v7/internal/widget/an;

    iget-object v2, p0, Landroid/support/v7/widget/aq;->c:Landroid/support/v7/internal/widget/an;

    iput-boolean v5, v2, Landroid/support/v7/internal/widget/an;->d:Z

    iget-object v2, p0, Landroid/support/v7/widget/aq;->c:Landroid/support/v7/internal/widget/an;

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ao;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/internal/widget/an;->a:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/support/v7/internal/widget/an;

    invoke-direct {v2}, Landroid/support/v7/internal/widget/an;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/aq;->d:Landroid/support/v7/internal/widget/an;

    iget-object v2, p0, Landroid/support/v7/widget/aq;->d:Landroid/support/v7/internal/widget/an;

    iput-boolean v5, v2, Landroid/support/v7/internal/widget/an;->d:Z

    iget-object v2, p0, Landroid/support/v7/widget/aq;->d:Landroid/support/v7/internal/widget/an;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ao;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v2, Landroid/support/v7/internal/widget/an;->a:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
