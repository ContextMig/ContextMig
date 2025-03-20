.class public final Lcom/getbase/floatingactionbutton/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final fab_actions_spacing:I = 0x7f070053

.field public static final fab_icon_size:I = 0x7f070054

.field public static final fab_labels_margin:I = 0x7f070055

.field public static final fab_plus_icon_size:I = 0x7f070056

.field public static final fab_plus_icon_stroke:I = 0x7f070057

.field public static final fab_shadow_offset:I = 0x7f070058

.field public static final fab_shadow_radius:I = 0x7f070059

.field public static final fab_size_mini:I = 0x7f07005a

.field public static final fab_size_normal:I = 0x7f07005b

.field public static final fab_stroke_width:I = 0x7f07005c


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/getbase/floatingactionbutton/R$dimen;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x363a549bce76435L

    const-string v2, "com/getbase/floatingactionbutton/R$dimen"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/getbase/floatingactionbutton/R$dimen;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/getbase/floatingactionbutton/R$dimen;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
