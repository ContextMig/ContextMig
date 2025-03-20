.class public final Lbr/com/activity/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/activity/R$styleable;,
        Lbr/com/activity/R$style;,
        Lbr/com/activity/R$string;,
        Lbr/com/activity/R$menu;,
        Lbr/com/activity/R$layout;,
        Lbr/com/activity/R$integer;,
        Lbr/com/activity/R$id;,
        Lbr/com/activity/R$drawable;,
        Lbr/com/activity/R$dimen;,
        Lbr/com/activity/R$color;,
        Lbr/com/activity/R$bool;,
        Lbr/com/activity/R$attr;,
        Lbr/com/activity/R$array;,
        Lbr/com/activity/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/activity/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xd2c0521c06be463L

    const-string v2, "br/com/activity/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/activity/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/activity/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
