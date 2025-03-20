.class public final Lchan/android/app/pocketnote/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final down_from_top:I = 0x7f040000

.field public static final fade_in:I = 0x7f040001

.field public static final notes_layout_anim:I = 0x7f040002

.field public static final scale:I = 0x7f040003

.field public static final slide_in_left:I = 0x7f040004

.field public static final slide_out_right:I = 0x7f040005

.field public static final up_from_bottom:I = 0x7f040006


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/R$anim;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x187f5699bcd4795eL    # -3.711820937688669E190

    const-string v2, "chan/android/app/pocketnote/R$anim"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/R$anim;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/R$anim;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
