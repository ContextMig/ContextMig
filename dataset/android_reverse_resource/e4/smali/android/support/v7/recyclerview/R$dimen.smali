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

.field public static final compat_button_inset_horizontal_material:I = 0x7f07004d

.field public static final compat_button_inset_vertical_material:I = 0x7f07004e

.field public static final compat_button_padding_horizontal_material:I = 0x7f07004f

.field public static final compat_button_padding_vertical_material:I = 0x7f070050

.field public static final compat_control_corner_material:I = 0x7f070051

.field public static final fastscroll_default_thickness:I = 0x7f07007b

.field public static final fastscroll_margin:I = 0x7f07007c

.field public static final fastscroll_minimum_range:I = 0x7f07007d

.field public static final item_touch_helper_max_drag_scroll_per_frame:I = 0x7f070086

.field public static final item_touch_helper_swipe_escape_max_velocity:I = 0x7f070087

.field public static final item_touch_helper_swipe_escape_velocity:I = 0x7f070088

.field public static final notification_action_icon_size:I = 0x7f07008a

.field public static final notification_action_text_size:I = 0x7f07008b

.field public static final notification_big_circle_margin:I = 0x7f07008c

.field public static final notification_content_margin_start:I = 0x7f07008d

.field public static final notification_large_icon_height:I = 0x7f07008e

.field public static final notification_large_icon_width:I = 0x7f07008f

.field public static final notification_main_column_padding_top:I = 0x7f070090

.field public static final notification_media_narrow_margin:I = 0x7f070091

.field public static final notification_right_icon_size:I = 0x7f070092

.field public static final notification_right_side_padding_top:I = 0x7f070093

.field public static final notification_small_icon_background_padding:I = 0x7f070094

.field public static final notification_small_icon_size_as_large:I = 0x7f070095

.field public static final notification_subtext_size:I = 0x7f070096

.field public static final notification_top_pad:I = 0x7f070097

.field public static final notification_top_pad_large_text:I = 0x7f070098


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/recyclerview/R$dimen;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x29796f0c6b5b91b4L    # 6.768501729817033E-109

    const-string/jumbo v2, "android/support/v7/recyclerview/R$dimen"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
