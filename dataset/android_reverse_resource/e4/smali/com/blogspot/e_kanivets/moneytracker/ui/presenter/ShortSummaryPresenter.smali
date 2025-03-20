.class public Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;
.super Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;
.source "ShortSummaryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private green:I

.field private red:I

.field private view:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7e46f0a5999e5eadL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter"

    const/16 v3, 0x1b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->context:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->red:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->green:I

    .line 46
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private formatPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->$jacocoInit()[Z

    move-result-object v4

    .line 85
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    const/16 v5, 0xd

    aput-boolean v2, v4, v5

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 99
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->context:Landroid/content/Context;

    const v5, 0x7f0e0061

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirstDay()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 100
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getLastDay()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 99
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    aput-boolean v2, v4, v1

    :goto_1
    return-object v0

    .line 85
    :sswitch_0
    const-string/jumbo v6, "day"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xe

    aput-boolean v2, v4, v5

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    aput-boolean v2, v4, v0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "month"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x10

    aput-boolean v2, v4, v5

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    aput-boolean v2, v4, v0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "year"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x12

    aput-boolean v2, v4, v5

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    aput-boolean v2, v4, v0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "all_time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x14

    aput-boolean v2, v4, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    const/16 v5, 0x15

    aput-boolean v2, v4, v5

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirstDay()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    aput-boolean v2, v4, v1

    goto :goto_1

    .line 90
    :pswitch_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMMM, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirst()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    aput-boolean v2, v4, v1

    goto :goto_1

    .line 93
    :pswitch_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirst()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    aput-boolean v2, v4, v1

    goto/16 :goto_1

    .line 96
    :pswitch_3
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->context:Landroid/content/Context;

    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    aput-boolean v2, v4, v1

    goto/16 :goto_1

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x1839c -> :sswitch_0
        0x38883d -> :sswitch_2
        0x6342280 -> :sswitch_1
        0x6b2f6eab -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public create(Z)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->$jacocoInit()[Z

    move-result-object v2

    .line 49
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b005f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->view:Landroid/view/View;

    .line 50
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->view:Landroid/view/View;

    const v3, 0x7f090077

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aput-boolean v5, v2, v5

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->view:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    .local v0, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->view:Landroid/view/View;

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    return-object v1

    .line 50
    .end local v0    # "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;
    :cond_0
    const/4 v1, 0x4

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    goto :goto_0
.end method

.method public update(Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->$jacocoInit()[Z

    move-result-object v2

    .line 59
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;

    .line 61
    .local v0, "viewHolder":Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;
    if-nez p1, :cond_0

    .line 62
    iget-object v1, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalIncome:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalExpense:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    iget v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->red:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v1, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p3}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->createRatesNeededList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    aput-boolean v7, v2, v1

    .line 82
    :goto_0
    const/16 v1, 0xc

    aput-boolean v7, v2, v1

    return-void

    .line 68
    :cond_0
    iget-object v1, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvPeriod:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->formatPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalIncome:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getTotalIncome()D

    move-result-wide v4

    cmpl-double v1, v4, v8

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->green:I

    const/4 v4, 0x5

    aput-boolean v7, v2, v4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v1, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalIncome:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getTotalIncome()D

    move-result-wide v4

    .line 72
    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getCurrency()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v3, v4, v5, v6}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatIncome(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalExpense:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getTotalExpense()D

    move-result-wide v4

    cmpl-double v1, v4, v8

    if-lez v1, :cond_2

    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->green:I

    const/4 v4, 0x7

    aput-boolean v7, v2, v4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v1, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotalExpense:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getTotalExpense()D

    move-result-wide v4

    .line 76
    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getCurrency()Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v3, v4, v5, v6}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatExpense(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getTotal()D

    move-result-wide v4

    cmpl-double v1, v4, v8

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->green:I

    const/16 v4, 0x9

    aput-boolean v7, v2, v4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v1, v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter$ViewHolder;->tvTotal:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->formatController:Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getTotal()D

    move-result-wide v4

    .line 80
    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getCurrency()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v3, v4, v5, v6}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;->formatIncome(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xb

    aput-boolean v7, v2, v1

    goto/16 :goto_0

    .line 70
    :cond_1
    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->red:I

    const/4 v4, 0x6

    aput-boolean v7, v2, v4

    goto :goto_1

    .line 74
    :cond_2
    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->red:I

    const/16 v4, 0x8

    aput-boolean v7, v2, v4

    goto :goto_2

    .line 78
    :cond_3
    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;->red:I

    const/16 v4, 0xa

    aput-boolean v7, v2, v4

    goto :goto_3
.end method
