.class Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;
.super Ljava/lang/Object;
.source "DBCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/model/db/DBCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMonthRunnable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private month:Ljava/util/Date;

.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7dbec5dfdf82487L    # 8.258683000035903E-271

    const-string v2, "com/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable"

    const/16 v3, 0x1e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;Landroid/content/Context;Ljava/util/Date;)V
    .locals 3
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/db/DBCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->$jacocoInit()[Z

    move-result-object v0

    .line 204
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->this$0:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->month:Ljava/util/Date;

    .line 206
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->context:Landroid/content/Context;

    .line 207
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;Landroid/content/Context;Ljava/util/Date;Lcom/benoitletondor/easybudgetapp/model/db/DBCache$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->$jacocoInit()[Z

    move-result-object v0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;-><init>(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;Landroid/content/Context;Ljava/util/Date;)V

    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->$jacocoInit()[Z

    move-result-object v3

    .line 212
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v1

    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 217
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->month:Ljava/util/Date;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 218
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 220
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->this$0:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->access$200(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x5

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v3, v5

    .line 222
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->this$0:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->access$200(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanGMTDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 226
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    :try_start_2
    new-instance v0, Lcom/benoitletondor/easybudgetapp/model/db/DB;

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/benoitletondor/easybudgetapp/model/db/DB;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .local v0, "db":Lcom/benoitletondor/easybudgetapp/model/db/DB;
    const/16 v2, 0xc

    const/4 v4, 0x1

    :try_start_3
    aput-boolean v4, v3, v2

    .line 231
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xd

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBCache: Caching data for month: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v4, 0xe

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 236
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    const/16 v4, 0xf

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 238
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 239
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getExpensesForDay(Ljava/util/Date;Z)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x11

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 241
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->this$0:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->access$200(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v6

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v7, 0x12

    const/4 v8, 0x1

    :try_start_4
    aput-boolean v8, v3, v7

    .line 243
    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/model/db/DBCache$LoadMonthRunnable;->this$0:Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    invoke-static {v7}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->access$200(Lcom/benoitletondor/easybudgetapp/model/db/DBCache;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v7

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanGMTDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v7, v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 246
    const/4 v4, 0x5

    const/4 v5, 0x1

    :try_start_5
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 247
    const/16 v4, 0x14

    const/4 v5, 0x1

    aput-boolean v5, v3, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v1

    :goto_1
    if-nez v0, :cond_4

    const/16 v2, 0x18

    aput-boolean v9, v3, v2

    .line 257
    :goto_2
    const/16 v2, 0x1b

    aput-boolean v9, v3, v2

    throw v1

    .line 224
    .end local v0    # "db":Lcom/benoitletondor/easybudgetapp/model/db/DB;
    :cond_0
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 253
    if-nez v2, :cond_1

    const/4 v1, 0x7

    aput-boolean v9, v3, v1

    .line 224
    :goto_3
    const/16 v1, 0xa

    aput-boolean v9, v3, v1

    .line 258
    .restart local v0    # "db":Lcom/benoitletondor/easybudgetapp/model/db/DB;
    :goto_4
    return-void

    .line 253
    .end local v0    # "db":Lcom/benoitletondor/easybudgetapp/model/db/DB;
    :cond_1
    const/16 v1, 0x8

    aput-boolean v9, v3, v1

    .line 255
    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->close()V

    const/16 v1, 0x9

    aput-boolean v9, v3, v1

    goto :goto_3

    .line 226
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v4, 0xb

    const/4 v5, 0x1

    :try_start_8
    aput-boolean v5, v3, v4

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 253
    :catchall_2
    move-exception v1

    move-object v0, v2

    goto :goto_1

    .line 244
    .restart local v0    # "db":Lcom/benoitletondor/easybudgetapp/model/db/DB;
    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/16 v2, 0x13

    const/4 v4, 0x1

    :try_start_a
    aput-boolean v4, v3, v2

    throw v1

    .line 249
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBCache: Data cached for month: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 253
    if-nez v0, :cond_3

    const/16 v1, 0x15

    aput-boolean v9, v3, v1

    .line 258
    :goto_5
    const/16 v1, 0x1c

    aput-boolean v9, v3, v1

    goto :goto_4

    .line 253
    :cond_3
    const/16 v1, 0x16

    aput-boolean v9, v3, v1

    .line 255
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->close()V

    const/16 v1, 0x17

    aput-boolean v9, v3, v1

    goto :goto_5

    .line 253
    :cond_4
    const/16 v2, 0x19

    aput-boolean v9, v3, v2

    .line 255
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->close()V

    const/16 v2, 0x1a

    aput-boolean v9, v3, v2

    goto :goto_2
.end method
