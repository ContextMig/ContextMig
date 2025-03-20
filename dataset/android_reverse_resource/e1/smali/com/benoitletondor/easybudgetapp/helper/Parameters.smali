.class public Lcom/benoitletondor/easybudgetapp/helper/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final SHARED_PREFERENCES_FILE_NAME:Ljava/lang/String; = "easybudget_sp"

.field private static ourInstance:Lcom/benoitletondor/easybudgetapp/helper/Parameters;


# instance fields
.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1a8c94ec3e07ab66L    # 8.609959794415264E-181

    const-string v2, "com/benoitletondor/easybudgetapp/helper/Parameters"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aput-boolean v3, v0, v4

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "easybudget_sp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    .line 50
    aput-boolean v3, v0, v3

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;
    .locals 5

    .prologue
    const-class v1, Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    sget-object v2, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->ourInstance:Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 166
    :goto_0
    sget-object v2, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->ourInstance:Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    const/16 v3, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 161
    :cond_0
    const/16 v2, 0xb

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v0, v2

    .line 163
    new-instance v2, Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->ourInstance:Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v1, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
