.class public Lcom/haringeymobile/ukweather/data/objects/Rain;
.super Ljava/lang/Object;
.source "Rain.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private precipitationVolumePer3HhoursInMm:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3h"
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/objects/Rain;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xa7b997a84845df9L

    const-string v2, "com/haringeymobile/ukweather/data/objects/Rain"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/objects/Rain;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/objects/Rain;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
