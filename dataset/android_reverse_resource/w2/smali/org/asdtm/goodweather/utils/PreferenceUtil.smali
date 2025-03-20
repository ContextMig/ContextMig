.class public Lorg/asdtm/goodweather/utils/PreferenceUtil;
.super Ljava/lang/Object;
.source "PreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/PreferenceUtil;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4493f2007217c616L    # -1.8565030372816925E-22

    const-string v2, "org/asdtm/goodweather/utils/PreferenceUtil"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/PreferenceUtil;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->$jacocoInit()[Z

    move-result-object v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language_pref_key"

    const-string v3, "en"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getTheme(Landroid/content/Context;)Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "theme_pref_key"

    const-string v3, "light"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->valueOf(Ljava/lang/String;)Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
