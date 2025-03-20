.class public final Lcom/db/williamchart/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/williamchart/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final chart_axisBorderSpacing:I = 0x7f0100ab

.field public static final chart_axisColor:I = 0x7f0100aa

.field public static final chart_axisThickness:I = 0x7f0100a9

.field public static final chart_axisTopSpacing:I = 0x7f0100ac

.field public static final chart_barSpacing:I = 0x7f010099

.field public static final chart_fontSize:I = 0x7f0100af

.field public static final chart_labelColor:I = 0x7f0100ae

.field public static final chart_labels:I = 0x7f0100ad

.field public static final chart_setSpacing:I = 0x7f01009a

.field public static final chart_shadowColor:I = 0x7f0100b1

.field public static final chart_shadowDx:I = 0x7f0100b2

.field public static final chart_shadowDy:I = 0x7f0100b3

.field public static final chart_shadowRadius:I = 0x7f0100b4

.field public static final chart_typeface:I = 0x7f0100b0


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/db/williamchart/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xa378c91120a36faL

    const-string v2, "com/db/williamchart/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/db/williamchart/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/db/williamchart/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
