.class public Lluankevinferreira/expenses/util/SpinnerUtils;
.super Ljava/lang/Object;
.source "SpinnerUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/util/SpinnerUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x20aaf86247759cf5L    # -1.720964684454783E151

    const-string v2, "luankevinferreira/expenses/util/SpinnerUtils"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/util/SpinnerUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/util/SpinnerUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public retrieveAllItems(Landroid/widget/Spinner;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            ")",
            "Ljava/util/List",
            "<",
            "Lluankevinferreira/expenses/domain/Type;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lluankevinferreira/expenses/util/SpinnerUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    aput-boolean v7, v2, v7

    .line 15
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    const/4 v5, 0x2

    aput-boolean v7, v2, v5

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Lluankevinferreira/expenses/domain/Type;>;"
    const/4 v0, 0x0

    const/4 v5, 0x3

    aput-boolean v7, v2, v5

    :goto_0
    if-ge v0, v4, :cond_0

    const/4 v5, 0x4

    aput-boolean v7, v2, v5

    .line 18
    new-instance v5, Lluankevinferreira/expenses/domain/Type;

    invoke-direct {v5}, Lluankevinferreira/expenses/domain/Type;-><init>()V

    const/4 v6, 0x5

    aput-boolean v7, v2, v6

    .line 19
    invoke-interface {v3, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lluankevinferreira/expenses/domain/Type;->setName(Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-boolean v7, v2, v6

    .line 20
    invoke-virtual {v5, v0}, Lluankevinferreira/expenses/domain/Type;->setId(I)V

    const/4 v6, 0x7

    aput-boolean v7, v2, v6

    .line 22
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v5, 0x8

    aput-boolean v7, v2, v5

    goto :goto_0

    .line 24
    .end local v0    # "i":I
    :cond_0
    const/16 v3, 0x9

    aput-boolean v7, v2, v3

    return-object v1
.end method
