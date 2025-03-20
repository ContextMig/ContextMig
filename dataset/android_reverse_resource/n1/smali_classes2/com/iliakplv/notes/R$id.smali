.class public final Lcom/iliakplv/notes/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final action_about:I = 0x7f0c0025

.field public static final action_add:I = 0x7f0c0021

.field public static final action_discard_changes:I = 0x7f0c002d

.field public static final action_dropbox:I = 0x7f0c0027

.field public static final action_dropbox_close:I = 0x7f0c0026

.field public static final action_save_changes:I = 0x7f0c002c

.field public static final action_settings:I = 0x7f0c0024

.field public static final action_speak:I = 0x7f0c0022

.field public static final author:I = 0x7f0c0001

.field public static final checkbox:I = 0x7f0c000f

.field public static final color_1:I = 0x7f0c0006

.field public static final color_2:I = 0x7f0c0007

.field public static final color_3:I = 0x7f0c0008

.field public static final color_4:I = 0x7f0c0009

.field public static final color_5:I = 0x7f0c000a

.field public static final color_6:I = 0x7f0c000b

.field public static final color_7:I = 0x7f0c000c

.field public static final color_8:I = 0x7f0c000d

.field public static final contact:I = 0x7f0c0003

.field public static final details_scroll_view:I = 0x7f0c0013

.field public static final drawer_layout:I = 0x7f0c0010

.field public static final fragment_container:I = 0x7f0c0011

.field public static final google_play:I = 0x7f0c0002

.field public static final label_1:I = 0x7f0c001e

.field public static final label_2:I = 0x7f0c001d

.field public static final label_3:I = 0x7f0c001c

.field public static final label_4:I = 0x7f0c001b

.field public static final label_color:I = 0x7f0c000e

.field public static final label_name:I = 0x7f0c0005

.field public static final more_labels:I = 0x7f0c001f

.field public static final navigation_drawer:I = 0x7f0c0012

.field public static final no_notes_text:I = 0x7f0c0018

.field public static final note_body:I = 0x7f0c0016

.field public static final note_title:I = 0x7f0c0015

.field public static final note_title_layout:I = 0x7f0c0014

.field public static final notes_list:I = 0x7f0c0019

.field public static final search:I = 0x7f0c0023

.field public static final sort_by_change:I = 0x7f0c002b

.field public static final sort_by_create_asc:I = 0x7f0c0029

.field public static final sort_by_create_desc:I = 0x7f0c002a

.field public static final sort_by_title:I = 0x7f0c0028

.field public static final sources:I = 0x7f0c0004

.field public static final status:I = 0x7f0c0017

.field public static final subtitle:I = 0x7f0c0020

.field public static final title:I = 0x7f0c001a

.field public static final version:I = 0x7f0c0000


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xa3ff05d88d00a51L    # -1.543408309364438E259

    const-string v2, "com/iliakplv/notes/R$id"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/R$id;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
