.class public Lcom/iliakplv/notes/utils/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/utils/ConnectivityUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x18a769b1386e6da2L

    const-string v2, "com/iliakplv/notes/utils/ConnectivityUtils"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/utils/ConnectivityUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/ConnectivityUtils;->$jacocoInit()[Z

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

.method public static isNetworkConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/utils/ConnectivityUtils;->$jacocoInit()[Z

    move-result-object v3

    .line 16
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "connectivity"

    const/4 v5, 0x2

    aput-boolean v2, v3, v5

    .line 17
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v4, 0x3

    aput-boolean v2, v3, v4

    .line 18
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 19
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    aput-boolean v2, v3, v1

    move v1, v2

    :goto_0
    const/4 v4, 0x6

    aput-boolean v2, v3, v4

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x5

    aput-boolean v2, v3, v4

    goto :goto_0
.end method
