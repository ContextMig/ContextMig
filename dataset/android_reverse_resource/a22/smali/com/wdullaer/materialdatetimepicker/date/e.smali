.class public abstract Lcom/wdullaer/materialdatetimepicker/date/e;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/wdullaer/materialdatetimepicker/date/c;


# static fields
.field public static a:I

.field private static p:Ljava/text/SimpleDateFormat;


# instance fields
.field protected b:I

.field protected c:Z

.field protected d:I

.field protected e:F

.field protected f:Landroid/content/Context;

.field protected g:Landroid/os/Handler;

.field protected h:Lcom/wdullaer/materialdatetimepicker/date/h;

.field protected i:Lcom/wdullaer/materialdatetimepicker/date/g;

.field protected j:Lcom/wdullaer/materialdatetimepicker/date/h;

.field protected k:I

.field protected l:J

.field protected m:I

.field protected n:I

.field protected o:Lcom/wdullaer/materialdatetimepicker/date/f;

.field private q:Lcom/wdullaer/materialdatetimepicker/date/a;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, -0x1

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/e;->a:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/e;->p:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->b:I

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->c:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->d:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->e:F

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/h;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->h:Lcom/wdullaer/materialdatetimepicker/date/h;

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/h;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->j:Lcom/wdullaer/materialdatetimepicker/date/h;

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->m:I

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->n:I

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/f;

    invoke-direct {v0, p0}, Lcom/wdullaer/materialdatetimepicker/date/f;-><init>(Lcom/wdullaer/materialdatetimepicker/date/e;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->o:Lcom/wdullaer/materialdatetimepicker/date/f;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/e;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/wdullaer/materialdatetimepicker/date/e;->setController(Lcom/wdullaer/materialdatetimepicker/date/a;)V

    return-void
.end method

.method private a(Lcom/wdullaer/materialdatetimepicker/date/h;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/wdullaer/materialdatetimepicker/date/i;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(Lcom/wdullaer/materialdatetimepicker/date/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/wdullaer/materialdatetimepicker/date/h;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/h;->c:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v4, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/wdullaer/materialdatetimepicker/date/e;->p:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/wdullaer/materialdatetimepicker/date/h;
    .locals 4

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/wdullaer/materialdatetimepicker/date/i;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/h;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    check-cast v1, Lcom/wdullaer/materialdatetimepicker/date/i;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/date/i;->d()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)Lcom/wdullaer/materialdatetimepicker/date/g;
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->q:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->a()Lcom/wdullaer/materialdatetimepicker/date/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/wdullaer/materialdatetimepicker/date/e;->a(Lcom/wdullaer/materialdatetimepicker/date/h;ZZZ)Z

    return-void
.end method

.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->clearFocus()V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/e$1;

    invoke-direct {v0, p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/e$1;-><init>(Lcom/wdullaer/materialdatetimepicker/date/e;I)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->g:Landroid/os/Handler;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setDrawSelectorOnTop(Z)V

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->c()V

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/h;ZZZ)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->h:Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/h;->a(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->j:Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/h;->a(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->q:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->h()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->q:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v3}, Lcom/wdullaer/materialdatetimepicker/date/a;->f()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xc

    iget v3, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    add-int/2addr v2, v3

    sub-int v3, v2, v0

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_1
    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getPositionForView(Landroid/view/View;)I

    move-result v0

    :goto_1
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->i:Lcom/wdullaer/materialdatetimepicker/date/g;

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->h:Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-virtual {v2, v4}, Lcom/wdullaer/materialdatetimepicker/date/g;->a(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    :cond_2
    const-string v2, "MonthFragment"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MonthFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GoTo position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-ne v3, v0, :cond_4

    if-eqz p4, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->j:Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    iput v8, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->m:I

    if-eqz p2, :cond_9

    sget v0, Lcom/wdullaer/materialdatetimepicker/date/e;->a:I

    const/16 v1, 0xfa

    invoke-virtual {p0, v3, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->smoothScrollToPositionFromTop(III)V

    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const-string v5, "MonthFragment"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "MonthFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "child at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has top "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-gez v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v3}, Lcom/wdullaer/materialdatetimepicker/date/e;->a(I)V

    goto :goto_2

    :cond_a
    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->h:Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    goto :goto_2
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->i:Lcom/wdullaer/materialdatetimepicker/date/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->q:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-virtual {p0, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)Lcom/wdullaer/materialdatetimepicker/date/g;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->i:Lcom/wdullaer/materialdatetimepicker/date/g;

    :goto_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->i:Lcom/wdullaer/materialdatetimepicker/date/g;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->i:Lcom/wdullaer/materialdatetimepicker/date/g;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->h:Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/g;->a(Lcom/wdullaer/materialdatetimepicker/date/h;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->setCacheColorHint(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setItemsCanFocus(Z)V

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->setFastScrollEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->setFadingEdgeLength(I)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->e:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->setFriction(F)V

    return-void
.end method

.method public getMostVisiblePosition()I
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getHeight()I

    move-result v7

    move v2, v4

    move v1, v4

    move v0, v4

    move v3, v4

    :goto_0
    if-ge v2, v7, :cond_0

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    add-int/2addr v0, v6

    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v8, v2

    if-le v2, v3, :cond_2

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 2

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->d()Lcom/wdullaer/materialdatetimepicker/date/h;

    move-result-object v0

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->r:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->r:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->a(Lcom/wdullaer/materialdatetimepicker/date/h;)Z

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getBottom()I

    move-result v0

    sub-int v0, v1, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->l:J

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->n:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->m:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->o:Lcom/wdullaer/materialdatetimepicker/date/f;

    invoke-virtual {v0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/f;->a(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v7, 0x2000

    const/16 v6, 0x1000

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->q:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->h()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int v3, v1, v2

    rem-int/lit8 v3, v3, 0xc

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xc

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->q:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->f()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/date/h;

    invoke-direct {v2, v1, v3, v0}, Lcom/wdullaer/materialdatetimepicker/date/h;-><init>(III)V

    if-ne p1, v6, :cond_2

    iget v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    iget v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    iput v4, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    iget v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/date/e;->b(Lcom/wdullaer/materialdatetimepicker/date/h;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2, v0, v4, v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->a(Lcom/wdullaer/materialdatetimepicker/date/h;ZZZ)Z

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->r:Z

    goto :goto_0

    :cond_2
    if-ne p1, v7, :cond_1

    invoke-virtual {p0, v4}, Lcom/wdullaer/materialdatetimepicker/date/e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt v1, v5, :cond_1

    iget v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    iget v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    if-ne v1, v5, :cond_1

    const/16 v1, 0xb

    iput v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    iget v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    goto :goto_1
.end method

.method public setController(Lcom/wdullaer/materialdatetimepicker/date/a;)V
    .locals 1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->q:Lcom/wdullaer/materialdatetimepicker/date/a;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->q:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0, p0}, Lcom/wdullaer/materialdatetimepicker/date/a;->a(Lcom/wdullaer/materialdatetimepicker/date/c;)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->b()V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->a()V

    return-void
.end method

.method protected setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/h;)V
    .locals 1

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e;->k:I

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/e;->invalidateViews()V

    return-void
.end method
