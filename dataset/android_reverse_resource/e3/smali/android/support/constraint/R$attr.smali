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

.field public static final constraintSet:I = 0x7f010000

.field public static final layout_constraintBaseline_creator:I = 0x7f010004

.field public static final layout_constraintBaseline_toBaselineOf:I = 0x7f010005

.field public static final layout_constraintBottom_creator:I = 0x7f010006

.field public static final layout_constraintBottom_toBottomOf:I = 0x7f010007

.field public static final layout_constraintBottom_toTopOf:I = 0x7f010008

.field public static final layout_constraintDimensionRatio:I = 0x7f010009

.field public static final layout_constraintEnd_toEndOf:I = 0x7f01000a

.field public static final layout_constraintEnd_toStartOf:I = 0x7f01000b

.field public static final layout_constraintGuide_begin:I = 0x7f01000c

.field public static final layout_constraintGuide_end:I = 0x7f01000d

.field public static final layout_constraintGuide_percent:I = 0x7f01000e

.field public static final layout_constraintHeight_default:I = 0x7f01000f

.field public static final layout_constraintHeight_max:I = 0x7f010010

.field public static final layout_constraintHeight_min:I = 0x7f010011

.field public static final layout_constraintHorizontal_bias:I = 0x7f010012

.field public static final layout_constraintHorizontal_chainStyle:I = 0x7f010013

.field public static final layout_constraintHorizontal_weight:I = 0x7f010014

.field public static final layout_constraintLeft_creator:I = 0x7f010015

.field public static final layout_constraintLeft_toLeftOf:I = 0x7f010016

.field public static final layout_constraintLeft_toRightOf:I = 0x7f010017

.field public static final layout_constraintRight_creator:I = 0x7f010018

.field public static final layout_constraintRight_toLeftOf:I = 0x7f010019

.field public static final layout_constraintRight_toRightOf:I = 0x7f01001a

.field public static final layout_constraintStart_toEndOf:I = 0x7f01001b

.field public static final layout_constraintStart_toStartOf:I = 0x7f01001c

.field public static final layout_constraintTop_creator:I = 0x7f01001d

.field public static final layout_constraintTop_toBottomOf:I = 0x7f01001e

.field public static final layout_constraintTop_toTopOf:I = 0x7f01001f

.field public static final layout_constraintVertical_bias:I = 0x7f010020

.field public static final layout_constraintVertical_chainStyle:I = 0x7f010021

.field public static final layout_constraintVertical_weight:I = 0x7f010022

.field public static final layout_constraintWidth_default:I = 0x7f010023

.field public static final layout_constraintWidth_max:I = 0x7f010024

.field public static final layout_constraintWidth_min:I = 0x7f010025

.field public static final layout_editor_absoluteX:I = 0x7f010026

.field public static final layout_editor_absoluteY:I = 0x7f010027

.field public static final layout_goneMarginBottom:I = 0x7f010028

.field public static final layout_goneMarginEnd:I = 0x7f010029

.field public static final layout_goneMarginLeft:I = 0x7f01002a

.field public static final layout_goneMarginRight:I = 0x7f01002b

.field public static final layout_goneMarginStart:I = 0x7f01002c

.field public static final layout_goneMarginTop:I = 0x7f01002d

.field public static final layout_optimizationLevel:I = 0x7f01002e


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/constraint/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x37625ac86f663c9cL    # -6.456191852280517E41

    const-string v2, "android/support/constraint/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

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
