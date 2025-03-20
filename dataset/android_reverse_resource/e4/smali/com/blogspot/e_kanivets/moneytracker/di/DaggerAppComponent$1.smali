.class synthetic Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$1;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3d9287fc17585586L    # 4.213504861654078E-12

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$1"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method
