.class public final Lorg/asdtm/goodweather/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final language_entries:I = 0x7f0e0000

.field public static final language_values:I = 0x7f0e0001

.field public static final notification_refresh_interval_values:I = 0x7f0e0002

.field public static final notification_refresh_intervals_entries:I = 0x7f0e0003

.field public static final pref_temperature_entries:I = 0x7f0e0004

.field public static final pref_temperature_values:I = 0x7f0e0005

.field public static final theme_entries:I = 0x7f0e0006

.field public static final theme_values:I = 0x7f0e0007

.field public static final widget_theme_entries:I = 0x7f0e0008

.field public static final widget_theme_values:I = 0x7f0e0009

.field public static final widget_update_period_entries:I = 0x7f0e000a

.field public static final widget_update_period_values:I = 0x7f0e000b

.field public static final wind_direction_arrows:I = 0x7f0e000c

.field public static final wind_directions:I = 0x7f0e000d


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/R$array;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xa9c72cc0a8fa4beL    # -2.935675428335094E257

    const-string v2, "org/asdtm/goodweather/R$array"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/R$array;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/R$array;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
