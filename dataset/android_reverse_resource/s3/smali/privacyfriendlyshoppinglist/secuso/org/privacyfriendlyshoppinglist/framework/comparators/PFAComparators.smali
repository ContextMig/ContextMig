.class public abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/comparators/PFAComparators;
.super Ljava/lang/Object;
.source "PFAComparators.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final SORT_BY_CATEGORY:Ljava/lang/String; = "sort.by.category"

.field public static final SORT_BY_NAME:Ljava/lang/String; = "sort.by.name"

.field public static final SORT_BY_PRICE:Ljava/lang/String; = "sort.by.price"

.field public static final SORT_BY_PRIORITY:Ljava/lang/String; = "sort.by.priority"

.field public static final SORT_BY_QUANTITY:Ljava/lang/String; = "sort.by.quantity"

.field public static final SORT_BY_STORE:Ljava/lang/String; = "sort.by.store"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/comparators/PFAComparators;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4efdaed05f3ff96cL    # -1.2958912347088234E-72

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/comparators/PFAComparators"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/comparators/PFAComparators;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/comparators/PFAComparators;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected static getAscendingFactor(Z)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/comparators/PFAComparators;->$jacocoInit()[Z

    move-result-object v1

    .line 19
    const/4 v0, 0x1

    .line 20
    .local v0, "asc":I
    if-eqz p0, :cond_0

    aput-boolean v3, v1, v3

    .line 24
    :goto_0
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    return v0

    .line 22
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0
.end method
