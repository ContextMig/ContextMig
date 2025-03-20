.class public Lcom/haringeymobile/ukweather/WorldWeatherApplication;
.super Landroid/app/Application;
.source "WorldWeatherApplication.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static systemLocaleCode:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6acf7e6790b6d173L

    const-string v2, "com/haringeymobile/ukweather/WorldWeatherApplication"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getSystemLocaleCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 33
    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->getSystemLocaleCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->systemLocaleCode:Ljava/lang/String;

    .line 34
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    aput-boolean v3, v0, v3

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 16
    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->getSystemLocaleCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->systemLocaleCode:Ljava/lang/String;

    .line 17
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method
