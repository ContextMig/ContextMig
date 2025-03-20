.class public final Lcom/haringeymobile/ukweather/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final app_languages:I = 0x7f0b0000

.field public static final pref_city_removal_mode_titles:I = 0x7f0b0001

.field public static final pref_city_removal_mode_values:I = 0x7f0b0002

.field public static final pref_color_values:I = 0x7f0b0003

.field public static final pref_data_cache_period_titles:I = 0x7f0b0004

.field public static final pref_data_cache_period_values:I = 0x7f0b0005

.field public static final pref_forecast_display_mode_titles:I = 0x7f0b0006

.field public static final pref_forecast_display_mode_values:I = 0x7f0b0007

.field public static final pref_languages_values:I = 0x7f0b0008

.field public static final pref_temperature_scale_titles:I = 0x7f0b0009

.field public static final pref_temperature_scale_values:I = 0x7f0b000a

.field public static final pref_theme_names:I = 0x7f0b000b

.field public static final pref_theme_values:I = 0x7f0b000c

.field public static final pref_wind_speed_unit_id_values:I = 0x7f0b000d

.field public static final pref_wind_speed_unit_titles:I = 0x7f0b000e

.field public static final translated_languages:I = 0x7f0b000f

.field public static final translators:I = 0x7f0b0010


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/R$array;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2f70bb5c26b8654dL    # 3.527814736080815E-80

    const-string v2, "com/haringeymobile/ukweather/R$array"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/R$array;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/R$array;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
