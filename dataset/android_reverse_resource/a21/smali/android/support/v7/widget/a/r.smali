.class Landroid/support/v7/widget/a/r;
.super Landroid/support/v7/widget/a/q;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/a/q;-><init>()V

    return-void
.end method

.method private a(Landroid/support/v7/widget/ch;Landroid/view/View;)F
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ch;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/support/v4/i/bt;->r(Landroid/view/View;)F

    move-result v1

    cmpl-float v4, v1, v0

    if-lez v4, :cond_0

    move v0, v1

    goto :goto_1

    :cond_2
    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/view/View;FFIZ)V
    .locals 3

    if-eqz p7, :cond_0

    sget v0, Landroid/support/v7/d/c;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/support/v4/i/bt;->r(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/a/r;->a(Landroid/support/v7/widget/ch;Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {p3, v1}, Landroid/support/v4/i/bt;->d(Landroid/view/View;F)V

    sget v1, Landroid/support/v7/d/c;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/a/q;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/support/v7/d/c;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/i/bt;->d(Landroid/view/View;F)V

    :cond_0
    sget v0, Landroid/support/v7/d/c;->item_touch_helper_previous_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v7/widget/a/q;->a(Landroid/view/View;)V

    return-void
.end method
