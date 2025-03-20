.class Lcom/daimajia/swipe/SwipeLayout$1;
.super Landroid/support/v4/widget/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/SwipeLayout;
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/daimajia/swipe/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/cb;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->a:Z

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return p2

    :pswitch_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-le p2, v0, :cond_2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->c(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/g;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->c(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/g;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return p2

    :pswitch_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v2}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/daimajia/swipe/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->c(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/g;

    move-result-object v1

    sget-object v2, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    :cond_5
    add-int v1, v0, p3

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    :cond_6
    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v2}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->c(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/g;

    move-result-object v1

    sget-object v2, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v1, v2, :cond_7

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_0

    :cond_7
    add-int v1, v0, p3

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-lt v1, v2, :cond_8

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    :cond_8
    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v2}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->b(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v0

    return v0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 10

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ne p1, v2, :cond_4

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->c(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/g;

    move-result-object v1

    sget-object v2, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v1

    sget-object v2, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v1

    sget-object v2, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v1, v2, :cond_3

    :cond_1
    invoke-virtual {v0, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0, v3, v5, v4, v6}, Lcom/daimajia/swipe/SwipeLayout;->b(IIII)V

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0, v3, v5, p4, p5}, Lcom/daimajia/swipe/SwipeLayout;->a(IIII)V

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->c(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/g;

    move-result-object v1

    sget-object v7, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    if-ne v1, v7, :cond_5

    invoke-virtual {v2, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v2, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v7}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;Lcom/daimajia/swipe/d;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_6

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v1}, Landroid/view/View;->layout(IIII)V

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int v1, v0, p4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p5

    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v7}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v7

    sget-object v8, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v7}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v7

    if-ge v1, v7, :cond_8

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v7}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v8}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v2, v1, v0, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v7}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v7

    sget-object v8, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v7}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v7

    if-le v1, v7, :cond_9

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v7}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v7

    sget-object v8, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v7}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v7

    if-ge v0, v7, :cond_a

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    goto :goto_2

    :cond_a
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v7}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/d;

    move-result-object v7

    sget-object v8, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v7}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v7

    if-le v0, v7, :cond_7

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    goto :goto_2
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/cb;->onViewReleased(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->d(Lcom/daimajia/swipe/SwipeLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/k;

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-interface {v0, v2, p2, p3}, Lcom/daimajia/swipe/k;->a(Lcom/daimajia/swipe/SwipeLayout;FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    iget-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->a:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/daimajia/swipe/SwipeLayout;->a(FFZ)V

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->b:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v3

    sget-object v4, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    if-ne v3, v4, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->a:Z

    :cond_1
    return v2

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
