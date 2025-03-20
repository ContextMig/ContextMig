.class public final Lcom/jjoe64/graphview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final GraphViewXML:[I

.field public static final GraphViewXML_android_title:I = 0x0

.field public static final GraphViewXML_seriesColor:I = 0x4

.field public static final GraphViewXML_seriesData:I = 0x1

.field public static final GraphViewXML_seriesTitle:I = 0x3

.field public static final GraphViewXML_seriesType:I = 0x2


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/jjoe64/graphview/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1b11fc76ed381282L

    const-string v2, "com/jjoe64/graphview/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/jjoe64/graphview/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/jjoe64/graphview/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML:[I

    aput-boolean v2, v0, v2

    return-void

    :array_0
    .array-data 4
        0x10101e1
        0x7f0100d3
        0x7f0100d4
        0x7f0100d5
        0x7f0100d6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/jjoe64/graphview/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
