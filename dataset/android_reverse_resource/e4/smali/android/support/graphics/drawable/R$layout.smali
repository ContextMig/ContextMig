.class public final Landroid/support/graphics/drawable/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final notification_action:I = 0x7f0b0041

.field public static final notification_action_tombstone:I = 0x7f0b0042

.field public static final notification_template_custom_big:I = 0x7f0b0049

.field public static final notification_template_icon_group:I = 0x7f0b004a

.field public static final notification_template_part_chronometer:I = 0x7f0b004e

.field public static final notification_template_part_time:I = 0x7f0b004f


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/graphics/drawable/R$layout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x591a10a14221e437L    # -2.65454550643331E-121

    const-string/jumbo v2, "android/support/graphics/drawable/R$layout"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/R$layout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/graphics/drawable/R$layout;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
