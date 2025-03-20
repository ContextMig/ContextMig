.class public Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
.super Ljava/lang/Object;
.source "PreferenceController.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final APP_RATED:Ljava/lang/String; = "app_rated"

.field private static final KEY_DROPBOX_ACCESS_TOKEN:Ljava/lang/String; = "key_dropbox_access_token"

.field private static final KEY_FILTERED_CATEGORIES:Ljava/lang/String; = "key_filtered_categories"

.field private static final KEY_FIRST_TS:Ljava/lang/String; = "key_first_ts"

.field private static final KEY_LAST_TS:Ljava/lang/String; = "key_last_ts"

.field private static final KEY_PERIOD_TYPE:Ljava/lang/String; = "key_period_type"

.field private static final KEY_RECORD_TITLE_CATEGORY_PAIRS:Ljava/lang/String; = "key_record_title_category_pairs"

.field private static final LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field private static final RATE_PERIOD:I = 0x5


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6bd5745b7cc57c08L    # 2.821342402324625E211

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/PreferenceController"

    const/16 v3, 0x1e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    .line 41
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getDefaultPrefs()Landroid/content/SharedPreferences;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x1c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v0

    .line 179
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x1d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public addLaunchCount()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v2

    .line 44
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "launch_count"

    const-string/jumbo v4, "launch_count"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    aput-boolean v6, v2, v6

    return-void
.end method

.method public appRated()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v1

    .line 61
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "app_rated"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    return-void
.end method

.method public checkRateDialog()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v5

    .line 51
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 53
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "app_rated"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    .local v0, "appRated":Z
    if-eqz v0, :cond_0

    const/4 v6, 0x2

    aput-boolean v4, v5, v6

    .line 57
    :goto_0
    return v3

    .line 56
    :cond_0
    const-string/jumbo v6, "launch_count"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, "launchCount":I
    rem-int/lit8 v6, v1, 0x5

    if-nez v6, :cond_1

    const/4 v3, 0x3

    aput-boolean v4, v5, v3

    move v3, v4

    :goto_1
    const/4 v6, 0x5

    aput-boolean v4, v5, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    aput-boolean v4, v5, v6

    goto :goto_1
.end method

.method public readDefaultAccountId()J
    .locals 7

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    const v4, 0x7f0e0066

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "defaultAccountPref":Ljava/lang/String;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "-1"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v3, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    return-wide v4
.end method

.method public readDefaultCurrency()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    const v4, 0x7f0e0067

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "defaultCurrencyPref":Ljava/lang/String;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    return-object v3
.end method

.method public readDisplayPrecision()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    const v4, 0x7f0e0068

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "displayPrecisionPref":Ljava/lang/String;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "precision_math"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    return-object v3
.end method

.method public readDropboxAccessToken()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "key_dropbox_access_token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readFilteredCategories()Ljava/util/Set;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v0

    .line 153
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "key_filtered_categories"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readFirstTs()J
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v0

    .line 133
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "key_first_ts"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/16 v1, 0x12

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public readLastTs()J
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "key_last_ts"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/16 v1, 0x13

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public readPeriodType()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "key_period_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readRecordTitleCategoryPairs()Ljava/util/Map;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v4

    .line 158
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 160
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "key_record_title_category_pairs"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 162
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v6, 0x17

    aput-boolean v8, v4, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "entry":Ljava/lang/String;
    const-string/jumbo v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "words":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/16 v6, 0x18

    aput-boolean v8, v4, v6

    .line 167
    :goto_1
    const/16 v6, 0x1a

    aput-boolean v8, v4, v6

    goto :goto_0

    .line 165
    :cond_0
    const/4 v6, 0x0

    aget-object v6, v3, v6

    aget-object v7, v3, v8

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x19

    aput-boolean v8, v4, v6

    goto :goto_1

    .line 169
    .end local v0    # "entry":Ljava/lang/String;
    .end local v3    # "words":[Ljava/lang/String;
    :cond_1
    const/16 v5, 0x1b

    aput-boolean v8, v4, v5

    return-object v1
.end method

.method public writeDropboxAccessToken(Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v1

    .line 87
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_dropbox_access_token"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method public writeFilteredCategories(Ljava/util/Set;)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v1

    .line 93
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_filtered_categories"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method public writeFirstTs(J)V
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v1

    .line 67
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_first_ts"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method public writeLastTs(J)V
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v2

    .line 73
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getDefaultPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "key_last_ts"

    invoke-interface {v0, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-void
.end method

.method public writePeriodType(Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v1

    .line 81
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "key_period_type"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method public writeRecordTitleCategoryPairs(Ljava/util/Map;)V
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->$jacocoInit()[Z

    move-result-object v4

    .line 99
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 100
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v3, 0xc

    aput-boolean v7, v4, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    const/16 v3, 0xd

    aput-boolean v7, v4, v3

    goto :goto_0

    .line 104
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "key_record_title_category_pairs"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    const/16 v3, 0xe

    aput-boolean v7, v4, v3

    return-void
.end method
