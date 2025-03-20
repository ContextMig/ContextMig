.class public final Landroid/support/graphics/drawable/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/graphics/drawable/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x540c2d7e6d11e8b7L    # -5.800096544405021E-97

    const-string/jumbo v2, "android/support/graphics/drawable/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    invoke-static {}, Landroid/support/graphics/drawable/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/graphics/drawable/R$styleable;->FontFamily:[I

    .line 125
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/graphics/drawable/R$styleable;->FontFamilyFont:[I

    aput-boolean v2, v0, v2

    return-void

    .line 118
    nop

    :array_0
    .array-data 4
        0x7f040094
        0x7f040095
        0x7f040096
        0x7f040097
        0x7f040098
        0x7f040099
    .end array-data

    .line 125
    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f040092
        0x7f04009a
        0x7f04009b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/graphics/drawable/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
