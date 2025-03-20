.class final Lorg/asdtm/goodweather/utils/AppPreference$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "AppPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/utils/AppPreference;->loadWeatherForecast(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/asdtm/goodweather/model/WeatherForecast;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/AppPreference$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2522ff5c9541addaL    # -5.025895931638578E129

    const-string v2, "org/asdtm/goodweather/utils/AppPreference$1"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/AppPreference$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/AppPreference$1;->$jacocoInit()[Z

    move-result-object v0

    .line 175
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
