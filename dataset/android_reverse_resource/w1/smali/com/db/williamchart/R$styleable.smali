.class public final Lcom/db/williamchart/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/williamchart/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final BarChartAttrs:[I

.field public static final BarChartAttrs_chart_barSpacing:I = 0x0

.field public static final BarChartAttrs_chart_setSpacing:I = 0x1

.field public static final ChartAttrs:[I

.field public static final ChartAttrs_chart_axisBorderSpacing:I = 0x2

.field public static final ChartAttrs_chart_axisColor:I = 0x1

.field public static final ChartAttrs_chart_axisThickness:I = 0x0

.field public static final ChartAttrs_chart_axisTopSpacing:I = 0x3

.field public static final ChartAttrs_chart_fontSize:I = 0x6

.field public static final ChartAttrs_chart_labelColor:I = 0x5

.field public static final ChartAttrs_chart_labels:I = 0x4

.field public static final ChartAttrs_chart_shadowColor:I = 0x8

.field public static final ChartAttrs_chart_shadowDx:I = 0x9

.field public static final ChartAttrs_chart_shadowDy:I = 0xa

.field public static final ChartAttrs_chart_shadowRadius:I = 0xb

.field public static final ChartAttrs_chart_typeface:I = 0x7


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/db/williamchart/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x64f3c398257b42f5L

    const-string v2, "com/db/williamchart/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/db/williamchart/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/db/williamchart/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/db/williamchart/R$styleable;->BarChartAttrs:[I

    .line 39
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/db/williamchart/R$styleable;->ChartAttrs:[I

    aput-boolean v2, v0, v2

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x7f010099
        0x7f01009a
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x7f0100a9
        0x7f0100aa
        0x7f0100ab
        0x7f0100ac
        0x7f0100ad
        0x7f0100ae
        0x7f0100af
        0x7f0100b0
        0x7f0100b1
        0x7f0100b2
        0x7f0100b3
        0x7f0100b4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/db/williamchart/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
