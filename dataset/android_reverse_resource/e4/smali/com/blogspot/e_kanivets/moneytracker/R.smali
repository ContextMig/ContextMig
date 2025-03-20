.class public final Lcom/blogspot/e_kanivets/moneytracker/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/R$xml;,
        Lcom/blogspot/e_kanivets/moneytracker/R$styleable;,
        Lcom/blogspot/e_kanivets/moneytracker/R$style;,
        Lcom/blogspot/e_kanivets/moneytracker/R$string;,
        Lcom/blogspot/e_kanivets/moneytracker/R$mipmap;,
        Lcom/blogspot/e_kanivets/moneytracker/R$menu;,
        Lcom/blogspot/e_kanivets/moneytracker/R$layout;,
        Lcom/blogspot/e_kanivets/moneytracker/R$integer;,
        Lcom/blogspot/e_kanivets/moneytracker/R$id;,
        Lcom/blogspot/e_kanivets/moneytracker/R$drawable;,
        Lcom/blogspot/e_kanivets/moneytracker/R$dimen;,
        Lcom/blogspot/e_kanivets/moneytracker/R$color;,
        Lcom/blogspot/e_kanivets/moneytracker/R$bool;,
        Lcom/blogspot/e_kanivets/moneytracker/R$attr;,
        Lcom/blogspot/e_kanivets/moneytracker/R$array;,
        Lcom/blogspot/e_kanivets/moneytracker/R$animator;,
        Lcom/blogspot/e_kanivets/moneytracker/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5206b8adf754d404L    # -3.1768316907282455E-87

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
