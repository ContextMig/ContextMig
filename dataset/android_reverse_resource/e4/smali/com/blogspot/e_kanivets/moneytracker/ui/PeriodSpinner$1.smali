.class Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;
.super Ljava/lang/Object;
.source "PeriodSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x123e5b0a967f9aa6L    # 8.397740423778027E-221

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->$jacocoInit()[Z

    move-result-object v1

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 105
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 106
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 108
    packed-switch p3, :pswitch_data_0

    aput-boolean v4, v1, v4

    .line 137
    :goto_0
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    return-void

    .line 110
    :pswitch_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->dayPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    .line 111
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->weekPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    .line 115
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->monthPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    .line 119
    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->yearPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    .line 123
    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 126
    :pswitch_4
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iget-object v3, v3, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->allTimePeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    .line 127
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 131
    :pswitch_5
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    invoke-static {v2}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->access$000(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V

    .line 132
    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$1;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
