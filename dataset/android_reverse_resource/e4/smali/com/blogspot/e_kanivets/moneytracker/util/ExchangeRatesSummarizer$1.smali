.class Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;
.super Ljava/lang/Object;
.source "ExchangeRatesSummarizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->getSummaryList()Ljava/util/List;
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
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x39d909fe34aa664L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;->this$0:Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public compare(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;->$jacocoInit()[Z

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getCreatedAt()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getCreatedAt()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    const/4 v0, -0x1

    aput-boolean v1, v2, v1

    :goto_0
    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    return v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getCreatedAt()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getCreatedAt()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    check-cast p2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;->compare(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
