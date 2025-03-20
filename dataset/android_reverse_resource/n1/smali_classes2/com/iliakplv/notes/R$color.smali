.class public final Lcom/iliakplv/notes/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final color_transparent:I = 0x7f070000

.field public static final label_color_blue:I = 0x7f070001

.field public static final label_color_default:I = 0x7f070002

.field public static final label_color_green:I = 0x7f070003

.field public static final label_color_grey:I = 0x7f070004

.field public static final label_color_orange:I = 0x7f070005

.field public static final label_color_purple:I = 0x7f070006

.field public static final label_color_red:I = 0x7f070007

.field public static final label_color_yellow:I = 0x7f070008

.field public static final navigation_drawer_background:I = 0x7f070009

.field public static final note_details_body:I = 0x7f07000a

.field public static final note_details_title:I = 0x7f07000b

.field public static final note_list_item_background:I = 0x7f07000c

.field public static final note_list_item_black:I = 0x7f07000d

.field public static final note_list_item_grey:I = 0x7f07000e

.field public static final note_list_item_label_letter_color:I = 0x7f07000f

.field public static final note_list_item_placeholder:I = 0x7f070010

.field public static final status_search_background:I = 0x7f070011


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/R$color;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x48553a8810fe4421L    # -1.5366007794115108E-40

    const-string v2, "com/iliakplv/notes/R$color"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/R$color;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/R$color;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
