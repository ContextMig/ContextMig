.class public Lcom/benoitletondor/easybudgetapp/model/db/DBCache;
.super Ljava/lang/Object;
.source "DBCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadBalanceMonthRunnable;,
        Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static instance:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;


# instance fields
.field private final balances:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/util/Date;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final expenses:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5e88c4562cc2940bL

    const-string v2, "com/benoitletondor/easybudgetapp/model/db/DBCache"

    const/16 v3, 0x2c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 48
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    aput-boolean v2, v0, v2

    .line 52
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->executor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->context:Landroid/content/Context;

    .line 67
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    const/16 v2, 0x2a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    const/16 v2, 0x2b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-class v1, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v0

    .line 348
    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->instance:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 353
    :goto_0
    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->instance:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    const/16 v3, 0x29

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 348
    :cond_0
    const/16 v2, 0x27

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v0, v2

    .line 350
    new-instance v2, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->instance:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    const/16 v2, 0x28

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBalanceForDay(Ljava/util/Date;)Ljava/lang/Double;
    .locals 8
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v1, v3

    .line 177
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x21

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 182
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadBalanceMonthRunnable;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, p1, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadBalanceMonthRunnable;-><init>(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;Landroid/content/Context;Ljava/util/Date;Lcom/benoitletondor/easybudgetapp/model/db/DBCache$1;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 183
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x24

    aput-boolean v7, v1, v2

    :goto_0
    return-object v0

    .line 177
    :cond_0
    const/16 v0, 0x22

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v0

    .line 179
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x23

    aput-boolean v7, v1, v2

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x25

    aput-boolean v7, v1, v2

    throw v0
.end method

.method public getExpensesForDay(Ljava/util/Date;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    const/16 v3, 0x12

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v1, v3

    .line 134
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x13

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 139
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, p1, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;-><init>(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;Landroid/content/Context;Ljava/util/Date;Lcom/benoitletondor/easybudgetapp/model/db/DBCache$1;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 140
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x16

    aput-boolean v7, v1, v2

    :goto_0
    return-object v0

    .line 134
    :cond_0
    const/16 v0, 0x14

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v0

    .line 136
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x15

    aput-boolean v7, v1, v2

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x17

    aput-boolean v7, v1, v2

    throw v0
.end method

.method public hasExpensesForDay(Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 9
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v3

    .line 153
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v4

    const/16 v5, 0x18

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v3, v5

    .line 155
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 156
    .local v0, "expensesForDay":Ljava/util/List;, "Ljava/util/List<Lcom/benoitletondor/easybudgetapp/model/Expense;>;"
    if-eqz v0, :cond_0

    const/16 v1, 0x19

    const/4 v5, 0x1

    aput-boolean v5, v3, v1

    .line 162
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x1c

    const/4 v5, 0x1

    aput-boolean v5, v3, v1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x1e

    aput-boolean v2, v3, v4

    :goto_1
    return-object v1

    .line 156
    :cond_0
    const/16 v5, 0x1a

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v3, v5

    .line 158
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;

    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, p1, v8}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;-><init>(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;Landroid/content/Context;Ljava/util/Date;Lcom/benoitletondor/easybudgetapp/model/db/DBCache$1;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 159
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x1b

    aput-boolean v2, v3, v4

    goto :goto_1

    .line 162
    :cond_1
    const/4 v1, 0x0

    const/16 v5, 0x1d

    const/4 v6, 0x1

    :try_start_2
    aput-boolean v6, v3, v5

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0x1f

    aput-boolean v2, v3, v4

    throw v1
.end method

.method public loadMonth(Ljava/util/Date;)V
    .locals 6
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DBCache: Request to cache month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 78
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;-><init>(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;Landroid/content/Context;Ljava/util/Date;Lcom/benoitletondor/easybudgetapp/model/db/DBCache$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 79
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadBalanceMonthRunnable;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadBalanceMonthRunnable;-><init>(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;Landroid/content/Context;Ljava/util/Date;Lcom/benoitletondor/easybudgetapp/model/db/DBCache$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void
.end method

.method public refreshForDay(Lcom/benoitletondor/easybudgetapp/model/db/DB;Ljava/util/Date;)V
    .locals 6
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/db/DB;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DBCache: Refreshing for day: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    const/16 v0, 0x8

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 94
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 95
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    const/16 v0, 0xa

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v0

    .line 99
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p2}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanGMTDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getExpensesForDay(Ljava/util/Date;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    const/16 v0, 0xc

    aput-boolean v5, v1, v0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    throw v0

    .line 100
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v2, 0xb

    aput-boolean v5, v1, v2

    throw v0
.end method

.method public wipeAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->$jacocoInit()[Z

    move-result-object v1

    .line 108
    const-string v0, "DBCache: Refreshing all"

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    const/16 v0, 0xd

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 112
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->balances:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 113
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    const/16 v0, 0xf

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v1, v0

    .line 117
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->expenses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 118
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    throw v0

    .line 118
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    throw v0
.end method
