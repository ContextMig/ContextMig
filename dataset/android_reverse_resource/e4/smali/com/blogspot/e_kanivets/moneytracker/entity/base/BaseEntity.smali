.class public abstract Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;
.super Ljava/lang/Object;
.source "BaseEntity.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field protected id:J


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x73271ff6a8b585e3L    # -8.894246101500837E-247

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->$jacocoInit()[Z

    move-result-object v2

    .line 18
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    .line 19
    :goto_1
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method protected getDecimal(D)J
    .locals 9

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->getLong(D)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    long-to-double v4, v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const/4 v1, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getId()J
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->id:J

    aput-boolean v1, v0, v1

    return-wide v2
.end method

.method protected getLong(D)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    double-to-long v2, p1

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method
