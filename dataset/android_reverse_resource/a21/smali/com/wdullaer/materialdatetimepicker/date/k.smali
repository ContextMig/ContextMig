.class public Lcom/wdullaer/materialdatetimepicker/date/k;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/k;->a(J)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/k;->a(III)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/k;->a(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->a:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->b:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->c:I

    return-void
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->d:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->d:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->d:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->d:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->b:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->d:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->a:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->d:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->c:I

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->a:I

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->b:I

    iput p3, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->c:I

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/k;)V
    .locals 1

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/k;->a:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->a:I

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/k;->b:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->b:I

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/k;->c:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/k;->c:I

    return-void
.end method
