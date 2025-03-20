.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;
.super Ljava/lang/Object;
.source "PrefManager.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final IS_FIRST_TIME_LAUNCH:Ljava/lang/String; = "IsFirstTimeLaunch"

.field private static final PREF_NAME:Ljava/lang/String; = "androidhive-welcome"


# instance fields
.field private PRIVATE_MODE:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3bb3e7e8f0fd5076L    # -1.036489413498903E21

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->PRIVATE_MODE:I

    aput-boolean v3, v0, v1

    .line 22
    const-string v1, "androidhive-welcome"

    iget v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->PRIVATE_MODE:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->pref:Landroid/content/SharedPreferences;

    aput-boolean v3, v0, v3

    .line 23
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 24
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public isFirstTimeLaunch()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "IsFirstTimeLaunch"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setFirstTimeLaunch(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "IsFirstTimeLaunch"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 28
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/tutorial/PrefManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method
