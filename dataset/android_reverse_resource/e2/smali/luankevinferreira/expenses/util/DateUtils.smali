.class public Lluankevinferreira/expenses/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final FOUR_MONTH:I = 0x4

.field public static final ONE_MONTH:I = 0x1

.field private static final YYYY_MM_DD_HH_MM_SS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/util/DateUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4a865384f84acf23L    # 1.0441551226536828E51

    const-string v2, "luankevinferreira/expenses/util/DateUtils"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/util/DateUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/util/DateUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 15
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lluankevinferreira/expenses/util/DateUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 16
    aput-boolean v4, v0, v4

    return-void
.end method


# virtual methods
.method public getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/util/DateUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lluankevinferreira/expenses/util/DateUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getStringDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p1, "localDate"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lluankevinferreira/expenses/util/DateUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 24
    :goto_0
    iget-object v1, p0, Lluankevinferreira/expenses/util/DateUtils;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    return-object v1

    .line 20
    :cond_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 21
    new-instance p1, Ljava/util/Date;

    .end local p1    # "localDate":Ljava/util/Date;
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .restart local p1    # "localDate":Ljava/util/Date;
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
