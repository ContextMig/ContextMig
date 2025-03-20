.class public Lchan/android/app/pocketnote/app/NoteDateFormatter;
.super Ljava/lang/Object;
.source "NoteDateFormatter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/NoteDateFormatter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2aba1d1dceda26f1L    # 7.287029073132397E-103

    const-string v2, "chan/android/app/pocketnote/app/NoteDateFormatter"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/NoteDateFormatter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lchan/android/app/pocketnote/app/NoteDateFormatter;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static toString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    sget-object v1, Lchan/android/app/pocketnote/app/NoteDateFormatter;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v2, v0, v2

    return-object v1
.end method
