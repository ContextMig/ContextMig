.class public abstract Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;
.super Ljava/lang/Object;
.source "BaseSummaryPresenter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field protected context:Landroid/content/Context;

.field protected layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6d91334587e1cdbfL    # 6.07172874780388E219

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected createRatesNeededList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;->$jacocoInit()[Z

    move-result-object v2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;->context:Landroid/content/Context;

    const v4, 0x7f0e0045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    aput-boolean v7, v2, v7

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/base/BaseSummaryPresenter;->context:Landroid/content/Context;

    const v6, 0x7f0e002b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const/4 v4, 0x2

    aput-boolean v7, v2, v4

    goto :goto_0

    .line 25
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-boolean v7, v2, v4

    return-object v3
.end method
