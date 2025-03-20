.class public final Lcom/iliakplv/notes/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final about_dialog_text_margin:I = 0x7f080000

.field public static final about_dialog_text_size:I = 0x7f080001

.field public static final label_edit_radio_button_bottom_margin:I = 0x7f080002

.field public static final label_edit_radio_button_side_margin:I = 0x7f080003

.field public static final label_edit_select_color_text_bottom_margin:I = 0x7f080004

.field public static final label_edit_select_color_text_size:I = 0x7f080005

.field public static final label_edit_title_bottom_margin:I = 0x7f080006

.field public static final label_edit_title_width:I = 0x7f080007

.field public static final main_side_padding:I = 0x7f080008

.field public static final navigation_drawer_width:I = 0x7f080009

.field public static final note_details_body_text_size:I = 0x7f08000a

.field public static final note_details_padding:I = 0x7f08000b

.field public static final note_details_title_bottom_margin:I = 0x7f08000c

.field public static final note_details_title_text_size:I = 0x7f08000d

.field public static final note_list_item_horizontal_padding:I = 0x7f08000e

.field public static final note_list_item_internal_left_padding:I = 0x7f08000f

.field public static final note_list_item_internal_right_padding:I = 0x7f080010

.field public static final note_list_item_internal_vertical_padding:I = 0x7f080011

.field public static final note_list_item_label_height:I = 0x7f080012

.field public static final note_list_item_label_letter_text_size:I = 0x7f080013

.field public static final note_list_item_label_margin_left:I = 0x7f080014

.field public static final note_list_item_label_margin_left_from_title:I = 0x7f080015

.field public static final note_list_item_label_width:I = 0x7f080016

.field public static final note_list_item_large_text_size:I = 0x7f080017

.field public static final note_list_item_small_text_size:I = 0x7f080018

.field public static final note_list_item_status_text_size:I = 0x7f080019

.field public static final note_list_item_title_bottom_margin:I = 0x7f08001a

.field public static final note_list_item_vertical_padding:I = 0x7f08001b


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/R$dimen;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2281f72a9a9ebaadL

    const-string v2, "com/iliakplv/notes/R$dimen"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/R$dimen;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/R$dimen;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
