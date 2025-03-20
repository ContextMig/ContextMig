.class public Lorg/asdtm/goodweather/GoodWeatherApp;
.super Landroid/app/Application;
.source "GoodWeatherApp.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "GoodWeatherApp"

.field private static sTheme:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1132e751787ddb36L    # -5.385006400164407E225

    const-string v2, "org/asdtm/goodweather/GoodWeatherApp"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    sget-object v1, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->light:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    sput-object v1, Lorg/asdtm/goodweather/GoodWeatherApp;->sTheme:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getThemeResId()I
    .locals 5

    .prologue
    const v0, 0x7f0a0041

    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoInit()[Z

    move-result-object v1

    .line 40
    sget-object v2, Lorg/asdtm/goodweather/GoodWeatherApp$1;->$SwitchMap$org$asdtm$goodweather$utils$PreferenceUtil$Theme:[I

    sget-object v3, Lorg/asdtm/goodweather/GoodWeatherApp;->sTheme:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    invoke-virtual {v3}, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 46
    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    :goto_0
    return v0

    .line 42
    :pswitch_0
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 44
    :pswitch_1
    const v0, 0x7f0a0040

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public applyTheme(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-static {}, Lorg/asdtm/goodweather/GoodWeatherApp;->getThemeResId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 37
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 28
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/asdtm/goodweather/utils/LanguageUtil;->setLanguage(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    aput-boolean v2, v0, v2

    .line 20
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/asdtm/goodweather/utils/LanguageUtil;->setLanguage(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 22
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getTheme(Landroid/content/Context;)Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    move-result-object v1

    sput-object v1, Lorg/asdtm/goodweather/GoodWeatherApp;->sTheme:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    .line 23
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public reloadTheme()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/GoodWeatherApp;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getTheme(Landroid/content/Context;)Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    move-result-object v1

    sput-object v1, Lorg/asdtm/goodweather/GoodWeatherApp;->sTheme:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    .line 33
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
