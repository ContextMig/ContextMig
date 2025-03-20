.class public final Landroid/support/graphics/drawable/animated/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/animated/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final coordinatorLayoutStyle:I = 0x7f04006a

.field public static final font:I = 0x7f040092

.field public static final fontProviderAuthority:I = 0x7f040094

.field public static final fontProviderCerts:I = 0x7f040095

.field public static final fontProviderFetchStrategy:I = 0x7f040096

.field public static final fontProviderFetchTimeout:I = 0x7f040097

.field public static final fontProviderPackage:I = 0x7f040098

.field public static final fontProviderQuery:I = 0x7f040099

.field public static final fontStyle:I = 0x7f04009a

.field public static final fontWeight:I = 0x7f04009b

.field public static final keylines:I = 0x7f0400b5

.field public static final layout_anchor:I = 0x7f0400b8

.field public static final layout_anchorGravity:I = 0x7f0400b9

.field public static final layout_behavior:I = 0x7f0400ba

.field public static final layout_dodgeInsetEdges:I = 0x7f0400df

.field public static final layout_insetEdge:I = 0x7f0400e8

.field public static final layout_keyline:I = 0x7f0400e9

.field public static final statusBarBackground:I = 0x7f040136


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/graphics/drawable/animated/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6e02aadc1ae9d337L    # 8.43472921339309E221

    const-string/jumbo v2, "android/support/graphics/drawable/animated/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/animated/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/graphics/drawable/animated/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
