.class public Lchan/android/app/pocketnote/util/DeviceUtility;
.super Ljava/lang/Object;
.source "DeviceUtility.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/DeviceUtility;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x598c032cd8fbafaeL    # 2.314720781191302E123

    const-string v2, "chan/android/app/pocketnote/util/DeviceUtility"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/DeviceUtility;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/DeviceUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 10
    new-instance v1, Ljava/lang/AssertionError;

    const-class v2, Lchan/android/app/pocketnote/util/DeviceUtility;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    aput-boolean v3, v0, v3

    throw v1
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/DeviceUtility;->$jacocoInit()[Z

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v5, v1, v3

    .line 15
    int-to-float v3, p1

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 16
    .local v0, "px":I
    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    return v0
.end method
