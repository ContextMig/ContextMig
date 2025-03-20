.class public final Lcz/martykan/forecastie/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final dateFormatsValues:I = 0x7f0c0000

.field public static final lengthUnits:I = 0x7f0c0001

.field public static final lengthUnitsValues:I = 0x7f0c0002

.field public static final pressureUnits:I = 0x7f0c0003

.field public static final pressureUnitsValues:I = 0x7f0c0004

.field public static final refreshIntervals:I = 0x7f0c0005

.field public static final refreshIntervalsValues:I = 0x7f0c0006

.field public static final speedUnits:I = 0x7f0c0007

.field public static final speedUnitsValues:I = 0x7f0c0008

.field public static final temperatureUnits:I = 0x7f0c0009

.field public static final temperatureUnitsValues:I = 0x7f0c000a

.field public static final themes:I = 0x7f0c000b

.field public static final themesValues:I = 0x7f0c000c

.field public static final windDirectionArrows:I = 0x7f0c000d

.field public static final windDirectionFormatValues:I = 0x7f0c000e

.field public static final windDirectionFormats:I = 0x7f0c000f

.field public static final windDirections:I = 0x7f0c0010


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/R$array;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x731641ce87922182L

    const-string v2, "cz/martykan/forecastie/R$array"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/R$array;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/R$array;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
