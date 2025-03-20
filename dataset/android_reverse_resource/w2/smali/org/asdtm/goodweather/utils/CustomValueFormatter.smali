.class public Lorg/asdtm/goodweather/utils/CustomValueFormatter;
.super Ljava/lang/Object;
.source "CustomValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/ValueFormatter;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/CustomValueFormatter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4c3a4358bdd6ab86L    # -2.705384596370853E-59

    const-string v2, "org/asdtm/goodweather/utils/CustomValueFormatter"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/CustomValueFormatter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/CustomValueFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 14
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/utils/CustomValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 15
    aput-boolean v3, v0, v3

    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/CustomValueFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iget-object v1, p0, Lorg/asdtm/goodweather/utils/CustomValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
