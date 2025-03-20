.class public final Lpl/com/andrzejgrzyb/shoppinglist/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/com/andrzejgrzyb/shoppinglist/R$styleable;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$xml;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$style;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$string;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$plurals;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$mipmap;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$menu;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$layout;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$integer;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$id;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$drawable;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$dimen;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$color;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$bool;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$attr;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$array;,
        Lpl/com/andrzejgrzyb/shoppinglist/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x57f7d1ef49370283L    # -7.67091097308125E-116

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
