.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x70d9aa236da7516dL    # 4.0801034889569094E235

    const-string v2, "com/google/android/gms/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 99
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/R$styleable;->LoadingImageView:[I

    .line 103
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    aput-boolean v2, v0, v2

    return-void

    .line 99
    nop

    :array_0
    .array-data 4
        0x7f0100fc
        0x7f0100fd
        0x7f0100fe
    .end array-data

    .line 103
    :array_1
    .array-data 4
        0x7f01012c
        0x7f01012d
        0x7f01012e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
