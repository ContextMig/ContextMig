.class Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;
.super Ljava/lang/Object;
.source "RecordReport.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->makeReport(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x154f232fb88bc3b6L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public compare(Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;->getAmount()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;->getAmount()D

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->access$000(Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;DD)I

    move-result v1

    aput-boolean v6, v0, v6

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;

    check-cast p2, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;

    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;->compare(Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
