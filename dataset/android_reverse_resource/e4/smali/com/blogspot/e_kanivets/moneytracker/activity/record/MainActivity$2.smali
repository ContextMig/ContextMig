.class Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner$OnPeriodSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1e84132ac254e9c5L    # 1.115539890237574E-161

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPeriodSelected(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    invoke-static {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->access$002(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    .line 122
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    iget-object v1, v1, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->periodController:Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    invoke-virtual {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->writeLastUsedPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V

    .line 123
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity$2;->this$0:Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;->update()V

    .line 124
    aput-boolean v2, v0, v2

    return-void
.end method
