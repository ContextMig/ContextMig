.class public final Ldouzifly/list/widget/ColorPicker;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final a:Ldouzifly/list/widget/a;


# instance fields
.field private final b:[Ljava/lang/Long;

.field private c:I

.field private d:Ldouzifly/list/widget/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldouzifly/list/widget/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/widget/a;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/widget/ColorPicker;->a:Ldouzifly/list/widget/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Long;

    const-wide v4, 0xff4285f4L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-wide v4, 0xffec4536L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-wide v4, 0xfffbbd06L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-wide v4, 0xff34a852L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-wide v4, 0xffee468bL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-wide v4, 0xff3d7685L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-wide v4, 0xff572704L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-wide v4, 0xffe8d3a3L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    nop

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, p0, Ldouzifly/list/widget/ColorPicker;->b:[Ljava/lang/Long;

    iget-object v0, p0, Ldouzifly/list/widget/ColorPicker;->b:[Ljava/lang/Long;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ldouzifly/list/widget/ColorPicker;->c:I

    invoke-virtual {p0, v3}, Ldouzifly/list/widget/ColorPicker;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/ColorPicker;->setGravity(I)V

    iget-object v0, p0, Ldouzifly/list/widget/ColorPicker;->b:[Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Object;

    nop

    move v2, v3

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04001b

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    new-instance v1, Ldouzifly/list/widget/b;

    const-string v6, "view"

    invoke-static {v5, v6}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v5, v4}, Ldouzifly/list/widget/b;-><init>(Ldouzifly/list/widget/ColorPicker;Landroid/view/View;I)V

    invoke-virtual {p0, v5}, Ldouzifly/list/widget/ColorPicker;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Ldouzifly/list/widget/ColorPicker$a;

    invoke-direct {v1, p0, p1}, Ldouzifly/list/widget/ColorPicker$a;-><init>(Ldouzifly/list/widget/ColorPicker;Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lb/g;->a:Lb/g;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setSelectedColor(I)V
    .locals 0

    iput p1, p0, Ldouzifly/list/widget/ColorPicker;->c:I

    return-void
.end method


# virtual methods
.method public final getColors()[Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/ColorPicker;->b:[Ljava/lang/Long;

    return-object v0
.end method

.method public final getSelectItem()Ldouzifly/list/widget/b;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/ColorPicker;->d:Ldouzifly/list/widget/b;

    return-object v0
.end method

.method public final getSelectedColor()I
    .locals 1

    iget v0, p0, Ldouzifly/list/widget/ColorPicker;->c:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Ldouzifly/list/widget/ColorPicker;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/ColorPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ldouzifly/list/widget/ColorPicker;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final setSelectItem(Ldouzifly/list/widget/b;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/ColorPicker;->d:Ldouzifly/list/widget/b;

    return-void
.end method

.method public final setSelected(I)V
    .locals 4

    invoke-virtual {p0}, Ldouzifly/list/widget/ColorPicker;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    add-int/lit8 v2, v1, -0x1

    if-gt v0, v2, :cond_1

    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Ldouzifly/list/widget/ColorPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type douzifly.list.widget.ColorPicker.Item"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ldouzifly/list/widget/b;

    invoke-virtual {v0}, Ldouzifly/list/widget/b;->a()I

    move-result v3

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/ColorPicker;->setSelected(Ldouzifly/list/widget/b;)V

    :cond_1
    return-void

    :cond_2
    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final setSelected(Ldouzifly/list/widget/b;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldouzifly/list/widget/ColorPicker;->d:Ldouzifly/list/widget/b;

    invoke-static {p1, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldouzifly/list/widget/ColorPicker;->d:Ldouzifly/list/widget/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/b;->a(Z)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ldouzifly/list/widget/b;->a(Z)V

    iput-object p1, p0, Ldouzifly/list/widget/ColorPicker;->d:Ldouzifly/list/widget/b;

    invoke-virtual {p1}, Ldouzifly/list/widget/b;->a()I

    move-result v0

    invoke-direct {p0, v0}, Ldouzifly/list/widget/ColorPicker;->setSelectedColor(I)V

    goto :goto_0
.end method
