.class public final Lcom/benoitletondor/easybudgetapp/helper/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DEFAULT_TAG:Ljava/lang/String; = "EasyBudget"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2443ff1ec82a3060L    # -7.95077425857345E133

    const-string v2, "com/benoitletondor/easybudgetapp/helper/Logger"

    const/16 v3, 0x2b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 311
    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 256
    invoke-static {p0, v2, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 290
    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static debug(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 241
    if-nez p1, :cond_0

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 243
    :goto_0
    invoke-static {p0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    return-void

    .line 241
    :cond_0
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static debug(ZLjava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 301
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static debug(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 279
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    invoke-static {p0, v2, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 108
    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static error(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    if-nez p1, :cond_0

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 68
    :goto_0
    invoke-static {p0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void

    .line 66
    :cond_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static error(ZLjava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static error(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static getDefaultTag(Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v1

    .line 46
    if-eqz p0, :cond_0

    .line 48
    const-string v0, "EasyBudget-debug"

    aput-boolean v3, v1, v3

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "EasyBudget"

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 396
    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 352
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 341
    invoke-static {p0, v2, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->info(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 375
    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static info(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 326
    if-nez p1, :cond_0

    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 328
    :goto_0
    invoke-static {p0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void

    .line 326
    :cond_0
    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static info(ZLjava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 386
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->info(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    const/16 v1, 0x20

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static info(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 364
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->info(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 481
    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    const/16 v1, 0x2a

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 437
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 426
    invoke-static {p0, v2, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->verbose(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 460
    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static verbose(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 411
    if-nez p1, :cond_0

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    .line 413
    :goto_0
    invoke-static {p0, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    return-void

    .line 411
    :cond_0
    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public static verbose(ZLjava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 471
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->verbose(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    const/16 v1, 0x29

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static verbose(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 449
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->verbose(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    const/16 v1, 0x27

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 171
    invoke-static {p0, v2, p1, p2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->warning(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->getDefaultTag(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static warning(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    if-nez p1, :cond_0

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 158
    :goto_0
    invoke-static {p0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return-void

    .line 156
    :cond_0
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
