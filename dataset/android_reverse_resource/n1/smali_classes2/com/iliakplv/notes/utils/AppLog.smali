.class public Lcom/iliakplv/notes/utils/AppLog;
.super Ljava/lang/Object;
.source "AppLog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final ENABLED:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/utils/AppLog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1e73c03e1ff72e33L    # 5.487699045871163E-162

    const-string v2, "com/iliakplv/notes/utils/AppLog"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/utils/AppLog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/utils/AppLog;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    sget-boolean v1, Lcom/iliakplv/notes/BuildConfig;->DEBUG:Z

    sput-boolean v1, Lcom/iliakplv/notes/utils/AppLog;->ENABLED:Z

    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/AppLog;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 12
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Instance creation not allowed!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    aput-boolean v3, v0, v3

    throw v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/AppLog;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    sget-boolean v1, Lcom/iliakplv/notes/utils/AppLog;->ENABLED:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 19
    :goto_0
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void

    .line 16
    :cond_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/utils/AppLog;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/AppLog;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    sget-boolean v1, Lcom/iliakplv/notes/utils/AppLog;->ENABLED:Z

    if-nez v1, :cond_0

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 35
    :goto_0
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return-void

    .line 32
    :cond_0
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 33
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/AppLog;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    sget-boolean v1, Lcom/iliakplv/notes/utils/AppLog;->ENABLED:Z

    if-nez v1, :cond_0

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 47
    :goto_0
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-void

    .line 44
    :cond_0
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/AppLog;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    sget-boolean v1, Lcom/iliakplv/notes/utils/AppLog;->ENABLED:Z

    if-nez v1, :cond_0

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 25
    :goto_0
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void

    .line 22
    :cond_0
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/AppLog;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    sget-boolean v1, Lcom/iliakplv/notes/utils/AppLog;->ENABLED:Z

    if-nez v1, :cond_0

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 41
    :goto_0
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    return-void

    .line 38
    :cond_0
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 39
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
