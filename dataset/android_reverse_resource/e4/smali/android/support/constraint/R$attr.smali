.class public final Landroid/support/constraint/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final constraintSet:I = 0x7f040060

.field public static final layout_constraintBaseline_creator:I = 0x7f0400bd

.field public static final layout_constraintBaseline_toBaselineOf:I = 0x7f0400be

.field public static final layout_constraintBottom_creator:I = 0x7f0400bf

.field public static final layout_constraintBottom_toBottomOf:I = 0x7f0400c0

.field public static final layout_constraintBottom_toTopOf:I = 0x7f0400c1

.field public static final layout_constraintDimensionRatio:I = 0x7f0400c2

.field public static final layout_constraintEnd_toEndOf:I = 0x7f0400c3

.field public static final layout_constraintEnd_toStartOf:I = 0x7f0400c4

.field public static final layout_constraintGuide_begin:I = 0x7f0400c5

.field public static final layout_constraintGuide_end:I = 0x7f0400c6

.field public static final layout_constraintGuide_percent:I = 0x7f0400c7

.field public static final layout_constraintHeight_default:I = 0x7f0400c8

.field public static final layout_constraintHeight_max:I = 0x7f0400c9

.field public static final layout_constraintHeight_min:I = 0x7f0400ca

.field public static final layout_constraintHorizontal_bias:I = 0x7f0400cb

.field public static final layout_constraintHorizontal_chainStyle:I = 0x7f0400cc

.field public static final layout_constraintHorizontal_weight:I = 0x7f0400cd

.field public static final layout_constraintLeft_creator:I = 0x7f0400ce

.field public static final layout_constraintLeft_toLeftOf:I = 0x7f0400cf

.field public static final layout_constraintLeft_toRightOf:I = 0x7f0400d0

.field public static final layout_constraintRight_creator:I = 0x7f0400d1

.field public static final layout_constraintRight_toLeftOf:I = 0x7f0400d2

.field public static final layout_constraintRight_toRightOf:I = 0x7f0400d3

.field public static final layout_constraintStart_toEndOf:I = 0x7f0400d4

.field public static final layout_constraintStart_toStartOf:I = 0x7f0400d5

.field public static final layout_constraintTop_creator:I = 0x7f0400d6

.field public static final layout_constraintTop_toBottomOf:I = 0x7f0400d7

.field public static final layout_constraintTop_toTopOf:I = 0x7f0400d8

.field public static final layout_constraintVertical_bias:I = 0x7f0400d9

.field public static final layout_constraintVertical_chainStyle:I = 0x7f0400da

.field public static final layout_constraintVertical_weight:I = 0x7f0400db

.field public static final layout_constraintWidth_default:I = 0x7f0400dc

.field public static final layout_constraintWidth_max:I = 0x7f0400dd

.field public static final layout_constraintWidth_min:I = 0x7f0400de

.field public static final layout_editor_absoluteX:I = 0x7f0400e0

.field public static final layout_editor_absoluteY:I = 0x7f0400e1

.field public static final layout_goneMarginBottom:I = 0x7f0400e2

.field public static final layout_goneMarginEnd:I = 0x7f0400e3

.field public static final layout_goneMarginLeft:I = 0x7f0400e4

.field public static final layout_goneMarginRight:I = 0x7f0400e5

.field public static final layout_goneMarginStart:I = 0x7f0400e6

.field public static final layout_goneMarginTop:I = 0x7f0400e7

.field public static final layout_optimizationLevel:I = 0x7f0400ea


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/constraint/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1fc7c96f5c5ae038L

    const-string/jumbo v2, "android/support/constraint/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/constraint/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/constraint/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
