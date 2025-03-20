.class public Lcom/wdullaer/materialdatetimepicker/date/j;
.super Landroid/support/v4/widget/ai;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/date/i;

.field private final b:Landroid/graphics/Rect;

.field private final c:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/i;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/ai;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->b:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->c:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method protected a(FF)I
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {v0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(FF)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected a(ILandroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthHeaderSize()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v2, v2, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v3, v3, Lcom/wdullaer/materialdatetimepicker/date/i;->u:I

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v4, v4, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v4, v4, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    div-int/2addr v3, v4

    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/date/i;->c()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v5, v5, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    div-int v5, v4, v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v6, v6, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    rem-int/2addr v4, v6

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    mul-int v4, v5, v2

    add-int/2addr v1, v4

    add-int/2addr v3, v0

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected a(ILandroid/support/v4/view/a/l;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/date/j;->a(ILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/j;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/l;->d(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/l;->b(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/l;->a(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/date/i;->x:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/l;->e(Z)V

    :cond_0
    return-void
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/j;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v1, v1, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(IILandroid/os/Bundle;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-static {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(Lcom/wdullaer/materialdatetimepicker/date/i;I)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/j;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/ae;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/view/a/ae;->a(IILandroid/os/Bundle;)Z

    return-void
.end method

.method protected c(I)Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v1, v1, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v2, v2, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    const-string v0, "dd MMMM yyyy"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    iget v1, v1, Lcom/wdullaer/materialdatetimepicker/date/i;->x:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/date/i;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_item_is_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 4

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/j;->b()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/j;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/ae;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/a/ae;->a(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
