.class Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;
.super Ljava/lang/Object;
.source "PeriodSpinner.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->showToDateDialog(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

.field final synthetic val$fromDate:Ljava/util/Date;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7c37d7f77ff7de4aL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;->$jacocoInit()[Z

    move-result-object v0

    .line 169
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;->val$fromDate:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public OnDataChanged(Ljava/util/Date;)V
    .locals 8

    .prologue
    const/16 v4, 0x3b

    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;->$jacocoInit()[Z

    move-result-object v1

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 173
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 174
    const/16 v2, 0xb

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 175
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 176
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/16 v2, 0xe

    const/16 v3, 0x3e7

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 179
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$3;->val$fromDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const-string/jumbo v6, "custom"

    invoke-direct {v3, v4, v5, v6}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->setPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    .line 180
    aput-boolean v7, v1, v7

    return-void
.end method
