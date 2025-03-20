.class Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;
.super Ljava/lang/Object;
.source "PeriodSpinner.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/ui/ChangeDateDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->showFromDateDialog()V
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

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7fb3353799122c7aL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public OnDataChanged(Ljava/util/Date;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;->$jacocoInit()[Z

    move-result-object v1

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 153
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 154
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 155
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 156
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 159
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;->access$100(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;Ljava/util/Date;)V

    .line 160
    aput-boolean v4, v1, v4

    return-void
.end method
