.class public final Landroid/support/v7/recyclerview/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final item_touch_helper_max_drag_scroll_per_frame:I = 0x7f090073

.field public static final item_touch_helper_swipe_escape_max_velocity:I = 0x7f090074

.field public static final item_touch_helper_swipe_escape_velocity:I = 0x7f090075


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/recyclerview/R$dimen;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3ff0ba2ce3340187L    # -3.909094071364788

    const-string v2, "android/support/v7/recyclerview/R$dimen"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$dimen;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v7/recyclerview/R$dimen;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
