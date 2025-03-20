.class public final Landroid/support/mediacompat/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/mediacompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final notification_action:I = 0x7f0b0041

.field public static final notification_action_tombstone:I = 0x7f0b0042

.field public static final notification_media_action:I = 0x7f0b0043

.field public static final notification_media_cancel_action:I = 0x7f0b0044

.field public static final notification_template_big_media:I = 0x7f0b0045

.field public static final notification_template_big_media_custom:I = 0x7f0b0046

.field public static final notification_template_big_media_narrow:I = 0x7f0b0047

.field public static final notification_template_big_media_narrow_custom:I = 0x7f0b0048

.field public static final notification_template_custom_big:I = 0x7f0b0049

.field public static final notification_template_icon_group:I = 0x7f0b004a

.field public static final notification_template_lines_media:I = 0x7f0b004b

.field public static final notification_template_media:I = 0x7f0b004c

.field public static final notification_template_media_custom:I = 0x7f0b004d

.field public static final notification_template_part_chronometer:I = 0x7f0b004e

.field public static final notification_template_part_time:I = 0x7f0b004f


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/mediacompat/R$layout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5c3494c255c117fbL

    const-string/jumbo v2, "android/support/mediacompat/R$layout"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/mediacompat/R$layout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/mediacompat/R$layout;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
