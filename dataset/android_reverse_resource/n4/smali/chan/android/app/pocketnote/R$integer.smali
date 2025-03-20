.class public final Lchan/android/app/pocketnote/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abs__max_action_buttons:I = 0x7f090000

.field public static final default_circle_indicator_orientation:I = 0x7f090001

.field public static final default_title_indicator_footer_indicator_style:I = 0x7f090002

.field public static final default_title_indicator_line_position:I = 0x7f090003

.field public static final default_underline_indicator_fade_delay:I = 0x7f090004

.field public static final default_underline_indicator_fade_length:I = 0x7f090005

.field public static final preference_fragment_scrollbarStyle:I = 0x7f090006


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/R$integer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x47baa53fff188d72L    # -1.255104249721502E-37

    const-string v2, "chan/android/app/pocketnote/R$integer"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/R$integer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/R$integer;->$jacocoInit()[Z

    move-result-object v0

    .line 1617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
