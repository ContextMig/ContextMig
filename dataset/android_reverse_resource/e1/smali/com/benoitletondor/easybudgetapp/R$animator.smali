.class public final Lcom/benoitletondor/easybudgetapp/R$animator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "animator"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final design_appbar_state_list_animator:I = 0x7f060000

.field public static final scale_with_alpha:I = 0x7f060001


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/R$animator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x26733f570e9805f9L    # -2.3758829020111386E123

    const-string v2, "com/benoitletondor/easybudgetapp/R$animator"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/R$animator;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/R$animator;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
