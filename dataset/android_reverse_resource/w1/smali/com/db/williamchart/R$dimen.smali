.class public final Lcom/db/williamchart/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/williamchart/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final axis_dist_from_label:I = 0x7f09004e

.field public static final axis_thickness:I = 0x7f09004f

.field public static final bar_spacing:I = 0x7f090050

.field public static final dot_region_radius:I = 0x7f09006c

.field public static final font_size:I = 0x7f09006e

.field public static final grid_thickness:I = 0x7f09006f

.field public static final set_spacing:I = 0x7f090079


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/db/williamchart/R$dimen;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x242bc88969fdf3cdL

    const-string v2, "com/db/williamchart/R$dimen"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/db/williamchart/R$dimen;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/db/williamchart/R$dimen;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
