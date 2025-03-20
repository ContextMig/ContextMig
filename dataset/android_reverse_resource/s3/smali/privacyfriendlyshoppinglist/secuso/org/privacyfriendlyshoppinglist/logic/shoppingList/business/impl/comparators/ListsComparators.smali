.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/comparators/PFAComparators;
.source "ListsComparators.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x50dc26bbab4d0631L    # -1.3078057042403219E-81

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/comparators/PFAComparators;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)I
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->lambda$getNameComparator$0(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$lambda$1(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)I
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->lambda$getPriorityComparator$1(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static getNameComparator(Z)Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Comparator",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->getAscendingFactor(Z)I

    move-result v1

    aput-boolean v3, v0, v3

    .line 18
    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators$$Lambda$1;->lambdaFactory$(I)Ljava/util/Comparator;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getPriorityComparator(Z)Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Comparator",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->getAscendingFactor(Z)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 25
    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators$$Lambda$2;->lambdaFactory$(I)Ljava/util/Comparator;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$getNameComparator$0(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p0

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private static synthetic lambda$getPriorityComparator$1(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/comparators/ListsComparators;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p0

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
