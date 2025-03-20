.class public final Landroid/support/v7/cardview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/cardview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CardView:[I

.field public static final CardView_android_minHeight:I = 0x1

.field public static final CardView_android_minWidth:I = 0x0

.field public static final CardView_cardBackgroundColor:I = 0x2

.field public static final CardView_cardCornerRadius:I = 0x3

.field public static final CardView_cardElevation:I = 0x4

.field public static final CardView_cardMaxElevation:I = 0x5

.field public static final CardView_cardPreventCornerOverlap:I = 0x7

.field public static final CardView_cardUseCompatPadding:I = 0x6

.field public static final CardView_contentPadding:I = 0x8

.field public static final CardView_contentPaddingBottom:I = 0xc

.field public static final CardView_contentPaddingLeft:I = 0x9

.field public static final CardView_contentPaddingRight:I = 0xa

.field public static final CardView_contentPaddingTop:I = 0xb


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/cardview/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3a35351a21f00998L    # 2.676753988525074E-28

    const-string v2, "android/support/v7/cardview/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/cardview/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Landroid/support/v7/cardview/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/v7/cardview/R$styleable;->CardView:[I

    aput-boolean v2, v0, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x101013f
        0x1010140
        0x7f01009e
        0x7f01009f
        0x7f0100a0
        0x7f0100a1
        0x7f0100a2
        0x7f0100a3
        0x7f0100a4
        0x7f0100a5
        0x7f0100a6
        0x7f0100a7
        0x7f0100a8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v7/cardview/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
