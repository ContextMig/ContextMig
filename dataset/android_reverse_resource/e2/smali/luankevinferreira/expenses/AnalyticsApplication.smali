.class public Lluankevinferreira/expenses/AnalyticsApplication;
.super Landroid/app/Application;
.source "AnalyticsApplication.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/AnalyticsApplication;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x47da4cfd01601d9aL    # -3.1884203464215216E-38

    const-string v2, "luankevinferreira/expenses/AnalyticsApplication"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/AnalyticsApplication;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/AnalyticsApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public declared-synchronized getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lluankevinferreira/expenses/AnalyticsApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lluankevinferreira/expenses/AnalyticsApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 27
    :goto_0
    iget-object v1, p0, Lluankevinferreira/expenses/AnalyticsApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 22
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v0, v1

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 25
    const-string v2, "UA-61261149-4"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lluankevinferreira/expenses/AnalyticsApplication;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
