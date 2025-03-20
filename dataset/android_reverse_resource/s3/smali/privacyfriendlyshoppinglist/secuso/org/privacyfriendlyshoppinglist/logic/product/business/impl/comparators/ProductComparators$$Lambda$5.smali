.class final synthetic Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6c3b535ba5e809a7L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->arg$1:Ljava/lang/String;

    iput p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->arg$2:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static get$Lambda(Ljava/lang/String;I)Ljava/util/Comparator;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;

    invoke-direct {v1, p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;-><init>(Ljava/lang/String;I)V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public static lambdaFactory$(Ljava/lang/String;I)Ljava/util/Comparator;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;

    invoke-direct {v1, p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->arg$1:Ljava/lang/String;

    iget v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators$$Lambda$5;->arg$2:I

    check-cast p1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    check-cast p2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;

    invoke-static {v1, v2, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/impl/comparators/ProductComparators;->access$lambda$4(Ljava/lang/String;ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
