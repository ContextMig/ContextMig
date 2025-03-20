.class public final Lcom/astuetz/pagerslidingtabstrip/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/pagerslidingtabstrip/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final pstsDividerColor:I = 0x7f0100ca

.field public static final pstsDividerPadding:I = 0x7f0100cd

.field public static final pstsIndicatorColor:I = 0x7f0100c8

.field public static final pstsIndicatorHeight:I = 0x7f0100cb

.field public static final pstsScrollOffset:I = 0x7f0100cf

.field public static final pstsShouldExpand:I = 0x7f0100d1

.field public static final pstsTabBackground:I = 0x7f0100d0

.field public static final pstsTabPaddingLeftRight:I = 0x7f0100ce

.field public static final pstsTextAllCaps:I = 0x7f0100d2

.field public static final pstsUnderlineColor:I = 0x7f0100c9

.field public static final pstsUnderlineHeight:I = 0x7f0100cc


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/astuetz/pagerslidingtabstrip/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7b50592a164ea0bL

    const-string v2, "com/astuetz/pagerslidingtabstrip/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/astuetz/pagerslidingtabstrip/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/astuetz/pagerslidingtabstrip/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
