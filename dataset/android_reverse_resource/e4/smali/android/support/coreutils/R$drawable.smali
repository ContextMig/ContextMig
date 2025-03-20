.class public final Landroid/support/coreutils/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/coreutils/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final notification_action_background:I = 0x7f080070

.field public static final notification_bg:I = 0x7f080071

.field public static final notification_bg_low:I = 0x7f080072

.field public static final notification_bg_low_normal:I = 0x7f080073

.field public static final notification_bg_low_pressed:I = 0x7f080074

.field public static final notification_bg_normal:I = 0x7f080075

.field public static final notification_bg_normal_pressed:I = 0x7f080076

.field public static final notification_icon_background:I = 0x7f080077

.field public static final notification_template_icon_bg:I = 0x7f080078

.field public static final notification_template_icon_low_bg:I = 0x7f080079

.field public static final notification_tile_bg:I = 0x7f08007a

.field public static final notify_panel_notification_icon_bg:I = 0x7f08007b


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/coreutils/R$drawable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x122c98a0cb3b96b6L    # -1.0959318422365812E221

    const-string/jumbo v2, "android/support/coreutils/R$drawable"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/coreutils/R$drawable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/coreutils/R$drawable;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
