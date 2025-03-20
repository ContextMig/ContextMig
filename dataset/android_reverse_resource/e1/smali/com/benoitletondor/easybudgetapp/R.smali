.class public final Lcom/benoitletondor/easybudgetapp/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/R$styleable;,
        Lcom/benoitletondor/easybudgetapp/R$xml;,
        Lcom/benoitletondor/easybudgetapp/R$style;,
        Lcom/benoitletondor/easybudgetapp/R$string;,
        Lcom/benoitletondor/easybudgetapp/R$mipmap;,
        Lcom/benoitletondor/easybudgetapp/R$menu;,
        Lcom/benoitletondor/easybudgetapp/R$layout;,
        Lcom/benoitletondor/easybudgetapp/R$integer;,
        Lcom/benoitletondor/easybudgetapp/R$id;,
        Lcom/benoitletondor/easybudgetapp/R$drawable;,
        Lcom/benoitletondor/easybudgetapp/R$dimen;,
        Lcom/benoitletondor/easybudgetapp/R$color;,
        Lcom/benoitletondor/easybudgetapp/R$bool;,
        Lcom/benoitletondor/easybudgetapp/R$attr;,
        Lcom/benoitletondor/easybudgetapp/R$array;,
        Lcom/benoitletondor/easybudgetapp/R$animator;,
        Lcom/benoitletondor/easybudgetapp/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x186ec815ff634837L    # -7.671679000990427E190

    const-string v2, "com/benoitletondor/easybudgetapp/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
