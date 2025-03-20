.class public abstract Lcom/wdullaer/materialdatetimepicker/date/j;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/date/n;


# static fields
.field protected static b:I


# instance fields
.field protected final a:Lcom/wdullaer/materialdatetimepicker/date/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/wdullaer/materialdatetimepicker/date/k;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/j;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->e:I

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/j;->a()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->a()Lcom/wdullaer/materialdatetimepicker/date/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/j;->a(Lcom/wdullaer/materialdatetimepicker/date/k;)V

    return-void
.end method

.method private a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->d:Lcom/wdullaer/materialdatetimepicker/date/k;

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/date/k;->a:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->d:Lcom/wdullaer/materialdatetimepicker/date/k;

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/date/k;->b:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lcom/wdullaer/materialdatetimepicker/date/l;
.end method

.method protected a()V
    .locals 4

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/k;-><init>(J)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->d:Lcom/wdullaer/materialdatetimepicker/date/k;

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->e:I

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/k;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->d:Lcom/wdullaer/materialdatetimepicker/date/k;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/j;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/l;Lcom/wdullaer/materialdatetimepicker/date/k;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/wdullaer/materialdatetimepicker/date/j;->b(Lcom/wdullaer/materialdatetimepicker/date/k;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/wdullaer/materialdatetimepicker/date/k;)V
    .locals 4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->j()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/date/k;->a:I

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/date/k;->b:I

    iget v3, p1, Lcom/wdullaer/materialdatetimepicker/date/k;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/a;->a(III)V

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/j;->a(Lcom/wdullaer/materialdatetimepicker/date/k;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->g()I

    move-result v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v1}, Lcom/wdullaer/materialdatetimepicker/date/a;->f()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    check-cast p2, Lcom/wdullaer/materialdatetimepicker/date/l;

    invoke-virtual {p2}, Lcom/wdullaer/materialdatetimepicker/date/l;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    rem-int/lit8 v2, p1, 0xc

    div-int/lit8 v3, p1, 0xc

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v4}, Lcom/wdullaer/materialdatetimepicker/date/a;->f()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3, v2}, Lcom/wdullaer/materialdatetimepicker/date/j;->a(II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->d:Lcom/wdullaer/materialdatetimepicker/date/k;

    iget v1, v1, Lcom/wdullaer/materialdatetimepicker/date/k;->c:I

    :cond_2
    invoke-virtual {p2}, Lcom/wdullaer/materialdatetimepicker/date/l;->b()V

    const-string v4, "selected_day"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "year"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "month"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "week_start"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/wdullaer/materialdatetimepicker/date/l;->setMonthParams(Ljava/util/HashMap;)V

    invoke-virtual {p2}, Lcom/wdullaer/materialdatetimepicker/date/l;->invalidate()V

    return-object p2

    :cond_3
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->c:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/j;->a(Landroid/content/Context;)Lcom/wdullaer/materialdatetimepicker/date/l;

    move-result-object p2

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/wdullaer/materialdatetimepicker/date/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/wdullaer/materialdatetimepicker/date/l;->setClickable(Z)V

    invoke-virtual {p2, p0}, Lcom/wdullaer/materialdatetimepicker/date/l;->setOnDayClickListener(Lcom/wdullaer/materialdatetimepicker/date/n;)V

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->e:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/j;->e:I

    invoke-virtual {p2, v2}, Lcom/wdullaer/materialdatetimepicker/date/l;->setAccentColor(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
