.class public abstract Lcom/wdullaer/materialdatetimepicker/date/g;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/date/k;


# static fields
.field protected static b:I


# instance fields
.field protected final a:Lcom/wdullaer/materialdatetimepicker/date/a;

.field private final c:Landroid/content/Context;

.field private d:Lcom/wdullaer/materialdatetimepicker/date/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/g;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/g;->a()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->a()Lcom/wdullaer/materialdatetimepicker/date/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/g;->a(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    return-void
.end method

.method private a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->d:Lcom/wdullaer/materialdatetimepicker/date/h;

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->d:Lcom/wdullaer/materialdatetimepicker/date/h;

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lcom/wdullaer/materialdatetimepicker/date/i;
.end method

.method protected a()V
    .locals 4

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/h;-><init>(J)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->d:Lcom/wdullaer/materialdatetimepicker/date/h;

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/h;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->d:Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/g;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/i;Lcom/wdullaer/materialdatetimepicker/date/h;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/wdullaer/materialdatetimepicker/date/g;->b(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/wdullaer/materialdatetimepicker/date/h;)V
    .locals 4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->j()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    iget v3, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/a;->a(III)V

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/g;->a(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    return-void
.end method

.method public getCount()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->i()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v1}, Lcom/wdullaer/materialdatetimepicker/date/a;->h()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

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

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    check-cast p2, Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {p2}, Lcom/wdullaer/materialdatetimepicker/date/i;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->h()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p1

    rem-int/lit8 v2, v2, 0xc

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v3}, Lcom/wdullaer/materialdatetimepicker/date/a;->h()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0xc

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v4}, Lcom/wdullaer/materialdatetimepicker/date/a;->f()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3, v2}, Lcom/wdullaer/materialdatetimepicker/date/g;->a(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->d:Lcom/wdullaer/materialdatetimepicker/date/h;

    iget v1, v1, Lcom/wdullaer/materialdatetimepicker/date/h;->c:I

    :cond_1
    invoke-virtual {p2}, Lcom/wdullaer/materialdatetimepicker/date/i;->b()V

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

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->a:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/wdullaer/materialdatetimepicker/date/i;->setMonthParams(Ljava/util/HashMap;)V

    invoke-virtual {p2}, Lcom/wdullaer/materialdatetimepicker/date/i;->invalidate()V

    return-object p2

    :cond_2
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/g;->c:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/g;->a(Landroid/content/Context;)Lcom/wdullaer/materialdatetimepicker/date/i;

    move-result-object p2

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/wdullaer/materialdatetimepicker/date/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/wdullaer/materialdatetimepicker/date/i;->setClickable(Z)V

    invoke-virtual {p2, p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->setOnDayClickListener(Lcom/wdullaer/materialdatetimepicker/date/k;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
