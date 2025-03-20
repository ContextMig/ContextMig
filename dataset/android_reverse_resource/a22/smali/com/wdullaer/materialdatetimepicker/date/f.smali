.class public Lcom/wdullaer/materialdatetimepicker/date/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/date/e;

.field private b:I


# direct methods
.method protected constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/e;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AbsListView;I)V
    .locals 4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/date/e;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->b:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/date/e;->g:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 6

    const/16 v5, 0xfa

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->b:I

    iput v3, v2, Lcom/wdullaer/materialdatetimepicker/date/e;->n:I

    const-string v2, "MonthFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MonthFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new scroll state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget v4, v4, Lcom/wdullaer/materialdatetimepicker/date/e;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->b:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget v2, v2, Lcom/wdullaer/materialdatetimepicker/date/e;->m:I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget v2, v2, Lcom/wdullaer/materialdatetimepicker/date/e;->m:I

    if-eq v2, v0, :cond_6

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->b:I

    iput v3, v2, Lcom/wdullaer/materialdatetimepicker/date/e;->m:I

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v2, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v3, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/e;->getFirstVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/date/e;->getLastVisiblePosition()I

    move-result v4

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/e;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_4

    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/e;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-eqz v0, :cond_2

    sget v0, Lcom/wdullaer/materialdatetimepicker/date/e;->a:I

    if-ge v1, v0, :cond_2

    if-le v2, v3, :cond_5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v0, v1, v5}, Lcom/wdullaer/materialdatetimepicker/date/e;->smoothScrollBy(II)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v0, v2, v5}, Lcom/wdullaer/materialdatetimepicker/date/e;->smoothScrollBy(II)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->a:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/f;->b:I

    iput v1, v0, Lcom/wdullaer/materialdatetimepicker/date/e;->m:I

    goto :goto_1
.end method
