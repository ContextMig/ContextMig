.class public final Lcom/mobeta/android/dslv/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final click_remove_id:I = 0x7f0100ae

.field public static final collapsed_height:I = 0x7f0100a5

.field public static final drag_enabled:I = 0x7f0100af

.field public static final drag_handle_id:I = 0x7f0100b1

.field public static final drag_scroll_start:I = 0x7f0100b2

.field public static final drag_start_mode:I = 0x7f0100b0

.field public static final drop_animation_duration:I = 0x7f0100a9

.field public static final fling_handle_id:I = 0x7f0100ad

.field public static final float_alpha:I = 0x7f0100a7

.field public static final float_background_color:I = 0x7f0100a6

.field public static final max_drag_scroll_speed:I = 0x7f0100b3

.field public static final remove_animation_duration:I = 0x7f0100a8

.field public static final remove_enabled:I = 0x7f0100ab

.field public static final remove_mode:I = 0x7f0100ac

.field public static final slide_shuffle_speed:I = 0x7f0100aa

.field public static final sort_enabled:I = 0x7f0100b6

.field public static final track_drag_sort:I = 0x7f0100b4

.field public static final use_default_controller:I = 0x7f0100b5


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/mobeta/android/dslv/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x25e642d9d91b9f82L    # -1.0889490740388851E126

    const-string v2, "com/mobeta/android/dslv/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/mobeta/android/dslv/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/mobeta/android/dslv/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
