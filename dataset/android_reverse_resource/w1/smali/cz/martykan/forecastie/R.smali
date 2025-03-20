.class public final Lcz/martykan/forecastie/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/martykan/forecastie/R$styleable;,
        Lcz/martykan/forecastie/R$xml;,
        Lcz/martykan/forecastie/R$style;,
        Lcz/martykan/forecastie/R$string;,
        Lcz/martykan/forecastie/R$mipmap;,
        Lcz/martykan/forecastie/R$menu;,
        Lcz/martykan/forecastie/R$layout;,
        Lcz/martykan/forecastie/R$integer;,
        Lcz/martykan/forecastie/R$id;,
        Lcz/martykan/forecastie/R$drawable;,
        Lcz/martykan/forecastie/R$dimen;,
        Lcz/martykan/forecastie/R$color;,
        Lcz/martykan/forecastie/R$bool;,
        Lcz/martykan/forecastie/R$attr;,
        Lcz/martykan/forecastie/R$array;,
        Lcz/martykan/forecastie/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x791579c776f20a4cL    # 1.8588458642816994E275

    const-string v2, "cz/martykan/forecastie/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
