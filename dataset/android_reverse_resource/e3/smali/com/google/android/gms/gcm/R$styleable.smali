.class public final Lcom/google/android/gms/gcm/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final CustomWalletTheme:[I

.field public static final CustomWalletTheme_windowTransitionStyle:I = 0x0

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final WalletFragmentOptions:[I

.field public static final WalletFragmentOptions_appTheme:I = 0x0

.field public static final WalletFragmentOptions_environment:I = 0x1

.field public static final WalletFragmentOptions_fragmentMode:I = 0x3

.field public static final WalletFragmentOptions_fragmentStyle:I = 0x2

.field public static final WalletFragmentStyle:[I

.field public static final WalletFragmentStyle_buyButtonAppearance:I = 0x3

.field public static final WalletFragmentStyle_buyButtonHeight:I = 0x0

.field public static final WalletFragmentStyle_buyButtonText:I = 0x2

.field public static final WalletFragmentStyle_buyButtonWidth:I = 0x1

.field public static final WalletFragmentStyle_maskedWalletDetailsBackground:I = 0x6

.field public static final WalletFragmentStyle_maskedWalletDetailsButtonBackground:I = 0x8

.field public static final WalletFragmentStyle_maskedWalletDetailsButtonTextAppearance:I = 0x7

.field public static final WalletFragmentStyle_maskedWalletDetailsHeaderTextAppearance:I = 0x5

.field public static final WalletFragmentStyle_maskedWalletDetailsLogoImageType:I = 0xa

.field public static final WalletFragmentStyle_maskedWalletDetailsLogoTextColor:I = 0x9

.field public static final WalletFragmentStyle_maskedWalletDetailsTextAppearance:I = 0x4


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/gcm/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x12e2d930cb9b0ff8L    # -4.019752101448371E217

    const-string v2, "com/google/android/gms/gcm/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/android/gms/gcm/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/gcm/R$styleable;->AdsAttrs:[I

    .line 197
    new-array v1, v4, [I

    const/4 v2, 0x0

    const v3, 0x7f01004f

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/gms/gcm/R$styleable;->CustomWalletTheme:[I

    .line 199
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/gms/gcm/R$styleable;->LoadingImageView:[I

    .line 203
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/gms/gcm/R$styleable;->MapAttrs:[I

    .line 220
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/gms/gcm/R$styleable;->WalletFragmentOptions:[I

    .line 225
    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/android/gms/gcm/R$styleable;->WalletFragmentStyle:[I

    aput-boolean v4, v0, v4

    return-void

    .line 193
    nop

    :array_0
    .array-data 4
        0x7f01004b
        0x7f01004c
        0x7f01004d
    .end array-data

    .line 199
    :array_1
    .array-data 4
        0x7f01005b
        0x7f01005c
        0x7f01005d
    .end array-data

    .line 203
    :array_2
    .array-data 4
        0x7f01005e
        0x7f01005f
        0x7f010060
        0x7f010061
        0x7f010062
        0x7f010063
        0x7f010064
        0x7f010065
        0x7f010066
        0x7f010067
        0x7f010068
        0x7f010069
        0x7f01006a
        0x7f01006b
        0x7f01006c
        0x7f01006d
    .end array-data

    .line 220
    :array_3
    .array-data 4
        0x7f0100ec
        0x7f0100ed
        0x7f0100ee
        0x7f0100ef
    .end array-data

    .line 225
    :array_4
    .array-data 4
        0x7f0100f0
        0x7f0100f1
        0x7f0100f2
        0x7f0100f3
        0x7f0100f4
        0x7f0100f5
        0x7f0100f6
        0x7f0100f7
        0x7f0100f8
        0x7f0100f9
        0x7f0100fa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/gcm/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
