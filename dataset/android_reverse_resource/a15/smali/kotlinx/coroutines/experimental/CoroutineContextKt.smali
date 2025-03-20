.class public final Lkotlinx/coroutines/experimental/CoroutineContextKt;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/experimental/CoroutineContextKt\n*L\n1#1,149:1\n*E\n"
.end annotation


# static fields
.field private static final COROUTINE_ID:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final DEBUG:Z

.field private static final DefaultDispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    nop

    .line 27
    nop

    :try_start_0
    const-string v2, "kotlinx.coroutines.debug"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    .local v0, "e":Ljava/lang/SecurityException;
    .local v1, "value":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 30
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    const-class v2, Lkotlinx/coroutines/experimental/CoroutineId;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    .line 34
    :goto_2
    nop

    .line 26
    sput-boolean v2, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DEBUG:Z

    .line 37
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v2, Lkotlinx/coroutines/experimental/CoroutineContextKt;->COROUTINE_ID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    sget-object v2, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    check-cast v2, Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    sput-object v2, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DefaultDispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    return-void

    .line 28
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 33
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System property \'kotlinx.coroutines.debug\' has unrecognized value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 29
    :sswitch_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    .line 29
    :sswitch_1
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :sswitch_2
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    const/4 v2, 0x0

    goto :goto_2

    .line 29
    :sswitch_3
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xddf -> :sswitch_3
        0x1ad6f -> :sswitch_2
        0x2dddaf -> :sswitch_1
    .end sparse-switch
.end method

.method public static final getCoroutineName(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;
    .locals 6
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/CoroutineContext;

    .prologue
    const/4 v3, 0x0

    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-boolean v2, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DEBUG:Z

    if-nez v2, :cond_0

    move-object v2, v3

    .line 137
    :goto_0
    return-object v2

    .line 135
    :cond_0
    sget-object v2, Lkotlinx/coroutines/experimental/CoroutineId;->Key:Lkotlinx/coroutines/experimental/CoroutineId$Key;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineId;

    if-eqz v0, :cond_1

    .line 136
    .local v0, "coroutineId":Lkotlinx/coroutines/experimental/CoroutineId;
    sget-object v2, Lkotlinx/coroutines/experimental/CoroutineName;->Key:Lkotlinx/coroutines/experimental/CoroutineName$Key;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/experimental/CoroutineName;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/experimental/CoroutineName;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    .local v1, "coroutineName":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CoroutineId;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "coroutineId":Lkotlinx/coroutines/experimental/CoroutineId;
    .end local v1    # "coroutineName":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 135
    goto :goto_0

    .line 136
    .restart local v0    # "coroutineId":Lkotlinx/coroutines/experimental/CoroutineId;
    :cond_2
    const-string v1, "coroutine"

    goto :goto_1
.end method

.method public static final getDefaultDispatcher()Lkotlinx/coroutines/experimental/CoroutineDispatcher;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DefaultDispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    return-object v0
.end method

.method public static final newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 6
    .param p0, "context"    # Lkotlin/coroutines/experimental/CoroutineContext;
    .param p1, "parent"    # Lkotlinx/coroutines/experimental/Job;

    .prologue
    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-boolean v2, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Lkotlinx/coroutines/experimental/CoroutineId;

    sget-object v3, Lkotlinx/coroutines/experimental/CoroutineContextKt;->COROUTINE_ID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lkotlinx/coroutines/experimental/CoroutineId;-><init>(J)V

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    .line 99
    .local v0, "debug":Lkotlin/coroutines/experimental/CoroutineContext;
    :goto_0
    if-nez p1, :cond_2

    move-object v1, v0

    .line 100
    .end local p1    # "parent":Lkotlinx/coroutines/experimental/Job;
    .local v1, "wp":Lkotlin/coroutines/experimental/CoroutineContext;
    :goto_1
    sget-object v2, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DefaultDispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    if-eq p0, v2, :cond_0

    sget-object v2, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v2

    if-nez v2, :cond_0

    .line 101
    sget-object v2, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DefaultDispatcher:Lkotlinx/coroutines/experimental/CoroutineDispatcher;

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v1, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    .line 100
    .end local v1    # "wp":Lkotlin/coroutines/experimental/CoroutineContext;
    :cond_0
    return-object v1

    .end local v0    # "debug":Lkotlin/coroutines/experimental/CoroutineContext;
    .restart local p1    # "parent":Lkotlinx/coroutines/experimental/Job;
    :cond_1
    move-object v0, p0

    .line 98
    goto :goto_0

    .line 99
    .restart local v0    # "debug":Lkotlin/coroutines/experimental/CoroutineContext;
    :cond_2
    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext;

    .end local p1    # "parent":Lkotlinx/coroutines/experimental/Job;
    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext;->plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v1

    goto :goto_1
.end method

.method public static bridge synthetic newCoroutineContext$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/Job;ILjava/lang/Object;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 1

    .prologue
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    check-cast v0, Lkotlinx/coroutines/experimental/Job;

    :goto_0
    invoke-static {p0, v0}, Lkotlinx/coroutines/experimental/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/Job;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static final restoreThreadContext(Ljava/lang/String;)V
    .locals 2
    .param p0, "oldName"    # Ljava/lang/String;

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public static final updateThreadContext(Lkotlin/coroutines/experimental/CoroutineContext;)Ljava/lang/String;
    .locals 6
    .param p0, "$receiver"    # Lkotlin/coroutines/experimental/CoroutineContext;

    .prologue
    const/4 v3, 0x0

    const-string v4, "$receiver"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-boolean v4, Lkotlinx/coroutines/experimental/CoroutineContextKt;->DEBUG:Z

    if-nez v4, :cond_1

    .line 130
    .end local p0    # "$receiver":Lkotlin/coroutines/experimental/CoroutineContext;
    :cond_0
    :goto_0
    return-object v3

    .line 119
    .restart local p0    # "$receiver":Lkotlin/coroutines/experimental/CoroutineContext;
    :cond_1
    sget-object v4, Lkotlinx/coroutines/experimental/CoroutineId;->Key:Lkotlinx/coroutines/experimental/CoroutineId$Key;

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v4}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/experimental/CoroutineId;

    if-eqz v0, :cond_0

    .line 120
    .local v0, "coroutineId":Lkotlinx/coroutines/experimental/CoroutineId;
    sget-object v4, Lkotlinx/coroutines/experimental/CoroutineName;->Key:Lkotlinx/coroutines/experimental/CoroutineName$Key;

    check-cast v4, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p0, v4}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/experimental/CoroutineName;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lkotlinx/coroutines/experimental/CoroutineName;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 121
    .local v1, "coroutineName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 122
    .local v2, "currentThread":Ljava/lang/Thread;
    const-string v4, "currentThread"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "oldName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xa

    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "$receiver":Lkotlin/coroutines/experimental/CoroutineContext;
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local p0, "$receiver":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v4, " @"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/CoroutineId;->getId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    nop

    .line 123
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v1    # "coroutineName":Ljava/lang/String;
    .end local v2    # "currentThread":Ljava/lang/Thread;
    .end local v3    # "oldName":Ljava/lang/String;
    .local p0, "$receiver":Lkotlin/coroutines/experimental/CoroutineContext;
    :cond_2
    const-string v1, "coroutine"

    goto :goto_1
.end method
