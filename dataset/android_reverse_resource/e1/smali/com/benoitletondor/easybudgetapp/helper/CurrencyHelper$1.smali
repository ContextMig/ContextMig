.class final Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;
.super Ljava/lang/Object;
.source "CurrencyHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getOtherAvailableCurrencies()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Currency;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x157fc618c0781c08L

    const-string v2, "com/benoitletondor/easybudgetapp/helper/CurrencyHelper$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;->$jacocoInit()[Z

    move-result-object v0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;->$jacocoInit()[Z

    move-result-object v0

    .line 138
    check-cast p1, Ljava/util/Currency;

    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;->compare(Ljava/util/Currency;Ljava/util/Currency;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public compare(Ljava/util/Currency;Ljava/util/Currency;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    aput-boolean v3, v0, v3

    return v1
.end method
