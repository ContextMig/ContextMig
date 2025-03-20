.class public Lorg/asdtm/goodweather/utils/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/LanguageUtil;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xc8c7d7c16262ce7L

    const-string v2, "org/asdtm/goodweather/utils/LanguageUtil"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/LanguageUtil;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/LanguageUtil;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    const-class v1, Lorg/asdtm/goodweather/utils/LanguageUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/asdtm/goodweather/utils/LanguageUtil;->TAG:Ljava/lang/String;

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/LanguageUtil;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static forceChangeLanguage(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/LanguageUtil;->$jacocoInit()[Z

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 48
    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    .line 52
    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    aput-boolean v3, v1, v5

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    .line 54
    invoke-virtual {p0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 55
    const/16 v2, 0x11

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static getLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/LanguageUtil;->$jacocoInit()[Z

    move-result-object v1

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 61
    .local v0, "locale":Ljava/lang/String;
    :goto_0
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    aput-boolean v4, v1, v2

    .line 62
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p0, v2, v3

    const/16 v2, 0x16

    aput-boolean v4, v1, v2

    .line 64
    :goto_1
    return-object p0

    .line 58
    .end local v0    # "locale":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "locale":Ljava/lang/String;
    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    move-object p0, v0

    goto :goto_0

    .line 64
    :cond_1
    const/16 v2, 0x17

    aput-boolean v4, v1, v2

    goto :goto_1
.end method

.method public static setLanguage(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/LanguageUtil;->$jacocoInit()[Z

    move-result-object v2

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    aput-boolean v7, v2, v7

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .local v1, "sLocale":Ljava/util/Locale;
    const/4 v3, 0x2

    aput-boolean v7, v2, v3

    .line 33
    .end local v1    # "sLocale":Ljava/util/Locale;
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x6

    aput-boolean v7, v2, v4

    .line 34
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const/4 v5, 0x7

    aput-boolean v7, v2, v5

    .line 35
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 36
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_2

    const/16 v5, 0x8

    aput-boolean v7, v2, v5

    .line 37
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    const/16 v5, 0x9

    aput-boolean v7, v2, v5

    .line 42
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 43
    const/16 v3, 0xb

    aput-boolean v7, v2, v3

    return-void

    .line 25
    :cond_0
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "localeParts":[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v7, :cond_1

    const/4 v3, 0x3

    aput-boolean v7, v2, v3

    .line 27
    new-instance v1, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    aget-object v4, v0, v7

    invoke-direct {v1, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "sLocale":Ljava/util/Locale;
    const/4 v3, 0x4

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 29
    .end local v1    # "sLocale":Ljava/util/Locale;
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 39
    .end local v0    # "localeParts":[Ljava/lang/String;
    :cond_2
    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/16 v5, 0xa

    aput-boolean v7, v2, v5

    goto :goto_1
.end method
