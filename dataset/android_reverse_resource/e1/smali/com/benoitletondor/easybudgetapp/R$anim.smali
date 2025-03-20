.class public final Lcom/benoitletondor/easybudgetapp/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abc_fade_in:I = 0x7f050000

.field public static final abc_fade_out:I = 0x7f050001

.field public static final abc_grow_fade_in_from_bottom:I = 0x7f050002

.field public static final abc_popup_enter:I = 0x7f050003

.field public static final abc_popup_exit:I = 0x7f050004

.field public static final abc_shrink_fade_out_from_bottom:I = 0x7f050005

.field public static final abc_slide_in_bottom:I = 0x7f050006

.field public static final abc_slide_in_top:I = 0x7f050007

.field public static final abc_slide_out_bottom:I = 0x7f050008

.field public static final abc_slide_out_top:I = 0x7f050009

.field public static final design_bottom_sheet_slide_in:I = 0x7f05000a

.field public static final design_bottom_sheet_slide_out:I = 0x7f05000b

.field public static final design_fab_in:I = 0x7f05000c

.field public static final design_fab_out:I = 0x7f05000d

.field public static final design_snackbar_in:I = 0x7f05000e

.field public static final design_snackbar_out:I = 0x7f05000f


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/R$anim;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xc985a7107a6ec7eL

    const-string v2, "com/benoitletondor/easybudgetapp/R$anim"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/R$anim;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/R$anim;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
