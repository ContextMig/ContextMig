.class public final Lme/writeily/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/writeily/R$styleable;,
        Lme/writeily/R$xml;,
        Lme/writeily/R$style;,
        Lme/writeily/R$string;,
        Lme/writeily/R$menu;,
        Lme/writeily/R$layout;,
        Lme/writeily/R$integer;,
        Lme/writeily/R$id;,
        Lme/writeily/R$drawable;,
        Lme/writeily/R$dimen;,
        Lme/writeily/R$color;,
        Lme/writeily/R$bool;,
        Lme/writeily/R$attr;,
        Lme/writeily/R$array;,
        Lme/writeily/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x485d612475cb66f6L    # -1.0687664325029032E-40

    const-string v2, "me/writeily/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
