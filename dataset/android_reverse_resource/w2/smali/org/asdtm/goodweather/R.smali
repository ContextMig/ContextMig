.class public final Lorg/asdtm/goodweather/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/asdtm/goodweather/R$styleable;,
        Lorg/asdtm/goodweather/R$xml;,
        Lorg/asdtm/goodweather/R$style;,
        Lorg/asdtm/goodweather/R$string;,
        Lorg/asdtm/goodweather/R$mipmap;,
        Lorg/asdtm/goodweather/R$menu;,
        Lorg/asdtm/goodweather/R$layout;,
        Lorg/asdtm/goodweather/R$integer;,
        Lorg/asdtm/goodweather/R$id;,
        Lorg/asdtm/goodweather/R$drawable;,
        Lorg/asdtm/goodweather/R$dimen;,
        Lorg/asdtm/goodweather/R$color;,
        Lorg/asdtm/goodweather/R$bool;,
        Lorg/asdtm/goodweather/R$attr;,
        Lorg/asdtm/goodweather/R$array;,
        Lorg/asdtm/goodweather/R$animator;,
        Lorg/asdtm/goodweather/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7a7ab01111c2987L

    const-string v2, "org/asdtm/goodweather/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
