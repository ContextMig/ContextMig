.class Landroid/support/v7/widget/al;
.super Landroid/support/v7/widget/bp;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ai;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/ListAdapter;

.field private final e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ai;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/bp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/al;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/al;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->a(I)V

    new-instance v0, Landroid/support/v7/widget/am;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/am;-><init>(Landroid/support/v7/widget/al;Landroid/support/v7/widget/ai;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/al;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/al;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/al;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/al;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/al;)V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/bp;->c()V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/i/bt;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/al;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/al;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/bp;->a(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/support/v7/widget/al;->d:Landroid/widget/ListAdapter;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/al;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method b()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/al;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/widget/ai;->b(Landroid/support/v7/widget/ai;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/internal/widget/av;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/widget/ai;->b(Landroid/support/v7/widget/ai;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move v1, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getPaddingLeft()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getPaddingRight()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getWidth()I

    move-result v5

    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/widget/ai;->c(Landroid/support/v7/widget/ai;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    iget-object v0, p0, Landroid/support/v7/widget/al;->d:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/al;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v2, v0, v6}, Landroid/support/v7/widget/ai;->a(Landroid/support/v7/widget/ai;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v6}, Landroid/support/v7/widget/ai;->b(Landroid/support/v7/widget/ai;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v6}, Landroid/support/v7/widget/ai;->b(Landroid/support/v7/widget/ai;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    if-le v2, v0, :cond_5

    :goto_2
    sub-int v2, v5, v3

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->f(I)V

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/internal/widget/av;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-int v0, v5, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/al;->h()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->b(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/widget/ai;->b(Landroid/support/v7/widget/ai;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v1}, Landroid/support/v7/widget/ai;->b(Landroid/support/v7/widget/ai;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v2}, Landroid/support/v7/widget/ai;->b(Landroid/support/v7/widget/ai;)Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v1, v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/widget/ai;->c(Landroid/support/v7/widget/ai;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    sub-int v0, v5, v3

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->f(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-static {v0}, Landroid/support/v7/widget/ai;->c(Landroid/support/v7/widget/ai;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->f(I)V

    goto :goto_3

    :cond_4
    add-int v0, v1, v3

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/al;->k()Z

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/al;->b()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/al;->g(I)V

    invoke-super {p0}, Landroid/support/v7/widget/bp;->c()V

    invoke-virtual {p0}, Landroid/support/v7/widget/al;->m()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v1}, Landroid/support/v7/widget/ai;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/al;->h(I)V

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v7/widget/an;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/an;-><init>(Landroid/support/v7/widget/al;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Landroid/support/v7/widget/ao;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ao;-><init>(Landroid/support/v7/widget/al;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/al;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
