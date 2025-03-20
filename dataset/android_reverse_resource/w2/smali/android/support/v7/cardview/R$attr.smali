.class public final Landroid/support/v7/cardview/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/cardview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final cardBackgroundColor:I = 0x7f0100d5

.field public static final cardCornerRadius:I = 0x7f0100d6

.field public static final cardElevation:I = 0x7f0100d7

.field public static final cardMaxElevation:I = 0x7f0100d8

.field public static final cardPreventCornerOverlap:I = 0x7f0100da

.field public static final cardUseCompatPadding:I = 0x7f0100d9

.field public static final contentPadding:I = 0x7f0100db

.field public static final contentPaddingBottom:I = 0x7f0100df

.field public static final contentPaddingLeft:I = 0x7f0100dc

.field public static final contentPaddingRight:I = 0x7f0100dd

.field public static final contentPaddingTop:I = 0x7f0100de


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/cardview/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x62214f1874a54716L    # -8.327485635208124E-165

    const-string v2, "android/support/v7/cardview/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/cardview/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v7/cardview/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
