.class public final Lcom/mobeta/android/dslv/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DragSortListView:[I

.field public static final DragSortListView_click_remove_id:I = 0x9

.field public static final DragSortListView_collapsed_height:I = 0x0

.field public static final DragSortListView_drag_enabled:I = 0xa

.field public static final DragSortListView_drag_handle_id:I = 0xc

.field public static final DragSortListView_drag_scroll_start:I = 0xd

.field public static final DragSortListView_drag_start_mode:I = 0xb

.field public static final DragSortListView_drop_animation_duration:I = 0x4

.field public static final DragSortListView_fling_handle_id:I = 0x8

.field public static final DragSortListView_float_alpha:I = 0x2

.field public static final DragSortListView_float_background_color:I = 0x1

.field public static final DragSortListView_max_drag_scroll_speed:I = 0xe

.field public static final DragSortListView_remove_animation_duration:I = 0x3

.field public static final DragSortListView_remove_enabled:I = 0x6

.field public static final DragSortListView_remove_mode:I = 0x7

.field public static final DragSortListView_slide_shuffle_speed:I = 0x5

.field public static final DragSortListView_sort_enabled:I = 0x11

.field public static final DragSortListView_track_drag_sort:I = 0xf

.field public static final DragSortListView_use_default_controller:I = 0x10


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/mobeta/android/dslv/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x583cbf9c4dea069aL    # -3.817128216712688E-117

    const-string v2, "com/mobeta/android/dslv/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/mobeta/android/dslv/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/mobeta/android/dslv/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    const/16 v1, 0x12

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mobeta/android/dslv/R$styleable;->DragSortListView:[I

    aput-boolean v2, v0, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100a5
        0x7f0100a6
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
        0x7f0100aa
        0x7f0100ab
        0x7f0100ac
        0x7f0100ad
        0x7f0100ae
        0x7f0100af
        0x7f0100b0
        0x7f0100b1
        0x7f0100b2
        0x7f0100b3
        0x7f0100b4
        0x7f0100b5
        0x7f0100b6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/mobeta/android/dslv/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
