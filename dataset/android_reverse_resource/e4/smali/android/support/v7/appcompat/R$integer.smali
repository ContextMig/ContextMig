.class public final Landroid/support/v7/appcompat/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abc_config_activityDefaultDur:I = 0x7f0a0000

.field public static final abc_config_activityShortDur:I = 0x7f0a0001

.field public static final cancel_button_image_alpha:I = 0x7f0a0004

.field public static final config_tooltipAnimTime:I = 0x7f0a0005

.field public static final status_bar_notification_info_maxnum:I = 0x7f0a0009


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/appcompat/R$integer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3101b7d2f5127dc7L    # 1.2535085135798679E-72

    const-string/jumbo v2, "android/support/v7/appcompat/R$integer"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/appcompat/R$integer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v7/appcompat/R$integer;->$jacocoInit()[Z

    move-result-object v0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
