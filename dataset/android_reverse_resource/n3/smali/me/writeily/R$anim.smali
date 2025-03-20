.class public final Lme/writeily/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abc_fade_in:I = 0x7f040000

.field public static final abc_fade_out:I = 0x7f040001

.field public static final abc_grow_fade_in_from_bottom:I = 0x7f040002

.field public static final abc_popup_enter:I = 0x7f040003

.field public static final abc_popup_exit:I = 0x7f040004

.field public static final abc_shrink_fade_out_from_bottom:I = 0x7f040005

.field public static final abc_slide_in_bottom:I = 0x7f040006

.field public static final abc_slide_in_top:I = 0x7f040007

.field public static final abc_slide_out_bottom:I = 0x7f040008

.field public static final abc_slide_out_top:I = 0x7f040009

.field public static final anim_no_change:I = 0x7f04000a

.field public static final anim_slide_in_left:I = 0x7f04000b

.field public static final anim_slide_in_right:I = 0x7f04000c

.field public static final anim_slide_in_up:I = 0x7f04000d

.field public static final anim_slide_out_down:I = 0x7f04000e

.field public static final anim_slide_out_left:I = 0x7f04000f

.field public static final anim_slide_out_right:I = 0x7f040010


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/R$anim;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4d2976fea3e6439dL    # 5.237810287562089E63

    const-string v2, "me/writeily/R$anim"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/R$anim;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/R$anim;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
