.class public final Lcom/roughike/bottombar/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roughike/bottombar/R$styleable;,
        Lcom/roughike/bottombar/R$style;,
        Lcom/roughike/bottombar/R$string;,
        Lcom/roughike/bottombar/R$layout;,
        Lcom/roughike/bottombar/R$integer;,
        Lcom/roughike/bottombar/R$id;,
        Lcom/roughike/bottombar/R$drawable;,
        Lcom/roughike/bottombar/R$dimen;,
        Lcom/roughike/bottombar/R$color;,
        Lcom/roughike/bottombar/R$bool;,
        Lcom/roughike/bottombar/R$attr;,
        Lcom/roughike/bottombar/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/roughike/bottombar/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x27523f110b0a96a3L    # 2.826427289220902E-119

    const-string v2, "com/roughike/bottombar/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/roughike/bottombar/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/roughike/bottombar/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
