.class public Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;
.super Landroid/support/v7/widget/AppCompatSpinner;
.source "PeriodSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private lastPeriod:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

.field private listener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private periodSelectedListener:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5c95f70023e09434L    # 1.0217536361543448E138

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->init(Landroid/content/Context;)V

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->init(Landroid/content/Context;)V

    .line 44
    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->init(Landroid/content/Context;)V

    .line 49
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->showFromDateDialog()V

    const/16 v1, 0x24

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->showToDateDialog(Ljava/util/Date;)V

    const/16 v1, 0x25

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->context:Landroid/content/Context;

    .line 96
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V

    .line 98
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    .line 99
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f030000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 100
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;

    invoke-direct {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setOnItemSelectedEvenIfUnchangedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showFromDateDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->lastPeriod:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    if-nez v2, :cond_0

    const/16 v2, 0x20

    aput-boolean v5, v1, v2

    .line 163
    .local v0, "dialog":Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;
    :goto_0
    return-void

    .line 148
    .end local v0    # "dialog":Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;
    :cond_0
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->lastPeriod:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirst()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;

    invoke-direct {v4, p0}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;-><init>(Landroid/content/Context;Ljava/util/Date;Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;)V

    .line 162
    .restart local v0    # "dialog":Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->show()V

    .line 163
    const/16 v2, 0x21

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method private showToDateDialog(Ljava/util/Date;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->lastPeriod:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    if-nez v2, :cond_0

    const/16 v2, 0x22

    aput-boolean v5, v1, v2

    .line 183
    .local v0, "dialog":Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;
    :goto_0
    return-void

    .line 168
    .end local v0    # "dialog":Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;
    :cond_0
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->lastPeriod:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getLast()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;

    invoke-direct {v4, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;-><init>(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;Ljava/util/Date;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;-><init>(Landroid/content/Context;Ljava/util/Date;Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;)V

    .line 182
    .restart local v0    # "dialog":Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog;->show()V

    .line 183
    const/16 v2, 0x23

    aput-boolean v5, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public setOnItemSelectedEvenIfUnchangedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 92
    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v6

    .line 52
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->lastPeriod:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    if-nez v0, :cond_0

    aput-boolean v2, v6, v4

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->periodSelectedListener:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;

    if-nez v0, :cond_2

    const/4 v0, 0x6

    aput-boolean v2, v6, v0

    .line 55
    :goto_1
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->lastPeriod:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    .line 57
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getType()Ljava/lang/String;

    move-result-object v7

    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    const/16 v7, 0x8

    aput-boolean v2, v6, v7

    :goto_2
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x13

    aput-boolean v2, v6, v0

    .line 78
    :goto_3
    const/16 v0, 0x19

    aput-boolean v2, v6, v0

    :goto_4
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->lastPeriod:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    invoke-virtual {v0, p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    aput-boolean v2, v6, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    aput-boolean v2, v6, v0

    goto :goto_4

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->periodSelectedListener:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;

    invoke-interface {v0, p1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;->onPeriodSelected(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    const/4 v0, 0x7

    aput-boolean v2, v6, v0

    goto :goto_1

    .line 57
    :sswitch_0
    const-string/jumbo v8, "day"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x9

    aput-boolean v2, v6, v7

    goto :goto_2

    :cond_3
    const/16 v0, 0xa

    aput-boolean v2, v6, v0

    move v0, v1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v8, "week"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0xb

    aput-boolean v2, v6, v7

    goto :goto_2

    :cond_4
    const/16 v0, 0xc

    aput-boolean v2, v6, v0

    move v0, v2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v8, "month"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v7, 0xd

    aput-boolean v2, v6, v7

    goto :goto_2

    :cond_5
    const/16 v0, 0xe

    aput-boolean v2, v6, v0

    move v0, v3

    goto :goto_2

    :sswitch_3
    const-string/jumbo v8, "year"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/16 v7, 0xf

    aput-boolean v2, v6, v7

    goto :goto_2

    :cond_6
    const/16 v0, 0x10

    aput-boolean v2, v6, v0

    move v0, v4

    goto :goto_2

    :sswitch_4
    const-string/jumbo v8, "all_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0x11

    aput-boolean v2, v6, v7

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x12

    aput-boolean v2, v6, v0

    move v0, v5

    goto/16 :goto_2

    .line 59
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setSelection(I)V

    .line 60
    const/16 v0, 0x14

    aput-boolean v2, v6, v0

    goto/16 :goto_3

    .line 63
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setSelection(I)V

    .line 64
    const/16 v0, 0x15

    aput-boolean v2, v6, v0

    goto/16 :goto_3

    .line 67
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setSelection(I)V

    .line 68
    const/16 v0, 0x16

    aput-boolean v2, v6, v0

    goto/16 :goto_3

    .line 71
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setSelection(I)V

    .line 72
    const/16 v0, 0x17

    aput-boolean v2, v6, v0

    goto/16 :goto_3

    .line 75
    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setSelection(I)V

    const/16 v0, 0x18

    aput-boolean v2, v6, v0

    goto/16 :goto_3

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x1839c -> :sswitch_0
        0x379ff4 -> :sswitch_1
        0x38883d -> :sswitch_3
        0x6342280 -> :sswitch_2
        0x6b2f6eab -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPeriodSelectedListener(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->periodSelectedListener:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;

    .line 82
    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSelection(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->$jacocoInit()[Z

    move-result-object v6

    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 87
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    const/16 v0, 0x1b

    aput-boolean v7, v6, v0

    .line 88
    :goto_0
    const/16 v0, 0x1d

    aput-boolean v7, v6, v0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v4, 0x0

    move-object v2, v1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/16 v0, 0x1c

    aput-boolean v7, v6, v0

    goto :goto_0
.end method
