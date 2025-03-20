.class public Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static LANGUAGE_KEY:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xa6c7d0a46d2e306L

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/LocaleHelper"

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->getPersistedData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static getPersistedData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    .line 60
    sget-object v2, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->LANGUAGE_KEY:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoInit()[Z

    move-result-object v2

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07005a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->LANGUAGE_KEY:Ljava/lang/String;

    aput-boolean v5, v2, v5

    .line 32
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    .line 34
    invoke-static {p0}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    move-object v0, v1

    .line 39
    .local v0, "lang":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->updateResources(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    .line 40
    const-string v1, "LOCALE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x7

    aput-boolean v5, v2, v1

    return-void

    .line 37
    :cond_0
    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    goto :goto_0
.end method

.method private static persist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    .line 67
    sget-object v2, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->LANGUAGE_KEY:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static setLocale(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-static {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->persist(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 54
    invoke-static {p0, p1}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->updateResources(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static updateResources(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/LocaleHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    aput-boolean v5, v1, v3

    .line 73
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    const/16 v3, 0x12

    aput-boolean v5, v1, v3

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x13

    aput-boolean v5, v1, v4

    .line 77
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 78
    .local v0, "configuration":Landroid/content/res/Configuration;
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/16 v2, 0x14

    aput-boolean v5, v1, v2

    .line 80
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 81
    const/16 v2, 0x15

    aput-boolean v5, v1, v2

    return-void
.end method
