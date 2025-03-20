.class public Lorg/asdtm/goodweather/utils/XAxisValueFormatter;
.super Ljava/lang/Object;
.source "XAxisValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/AxisValueFormatter;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mValues:[Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4e930081f6c6a777L    # 3.278671684810029E70

    const-string v2, "org/asdtm/goodweather/utils/XAxisValueFormatter"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;->mValues:[Ljava/lang/String;

    .line 12
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDecimalDigits()I
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/asdtm/goodweather/utils/XAxisValueFormatter;->mValues:[Ljava/lang/String;

    float-to-int v2, p1

    aget-object v1, v1, v2

    aput-boolean v3, v0, v3

    return-object v1
.end method
