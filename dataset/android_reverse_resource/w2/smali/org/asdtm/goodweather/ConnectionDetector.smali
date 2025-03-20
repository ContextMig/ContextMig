.class public Lorg/asdtm/goodweather/ConnectionDetector;
.super Ljava/lang/Object;
.source "ConnectionDetector.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/ConnectionDetector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2fae6773fadd3db8L    # 5.128418918716192E-79

    const-string v2, "org/asdtm/goodweather/ConnectionDetector"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/ConnectionDetector;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/ConnectionDetector;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/asdtm/goodweather/ConnectionDetector;->mContext:Landroid/content/Context;

    .line 13
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public isNetworkAvailableAndConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/ConnectionDetector;->$jacocoInit()[Z

    move-result-object v2

    .line 16
    iget-object v0, p0, Lorg/asdtm/goodweather/ConnectionDetector;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    aput-boolean v1, v2, v1

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    .line 19
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    .line 21
    if-nez v0, :cond_0

    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method
