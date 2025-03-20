.class public final Lluankevinferreira/expenses/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lluankevinferreira/expenses/R$styleable;,
        Lluankevinferreira/expenses/R$xml;,
        Lluankevinferreira/expenses/R$style;,
        Lluankevinferreira/expenses/R$string;,
        Lluankevinferreira/expenses/R$raw;,
        Lluankevinferreira/expenses/R$mipmap;,
        Lluankevinferreira/expenses/R$menu;,
        Lluankevinferreira/expenses/R$layout;,
        Lluankevinferreira/expenses/R$integer;,
        Lluankevinferreira/expenses/R$id;,
        Lluankevinferreira/expenses/R$drawable;,
        Lluankevinferreira/expenses/R$dimen;,
        Lluankevinferreira/expenses/R$color;,
        Lluankevinferreira/expenses/R$bool;,
        Lluankevinferreira/expenses/R$attr;,
        Lluankevinferreira/expenses/R$array;,
        Lluankevinferreira/expenses/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x765033b6373d3c5bL    # -5.049095696807435E-262

    const-string v2, "luankevinferreira/expenses/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
