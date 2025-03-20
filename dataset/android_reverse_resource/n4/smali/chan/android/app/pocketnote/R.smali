.class public final Lchan/android/app/pocketnote/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/R$styleable;,
        Lchan/android/app/pocketnote/R$xml;,
        Lchan/android/app/pocketnote/R$style;,
        Lchan/android/app/pocketnote/R$string;,
        Lchan/android/app/pocketnote/R$menu;,
        Lchan/android/app/pocketnote/R$layout;,
        Lchan/android/app/pocketnote/R$integer;,
        Lchan/android/app/pocketnote/R$id;,
        Lchan/android/app/pocketnote/R$drawable;,
        Lchan/android/app/pocketnote/R$dimen;,
        Lchan/android/app/pocketnote/R$color;,
        Lchan/android/app/pocketnote/R$bool;,
        Lchan/android/app/pocketnote/R$attr;,
        Lchan/android/app/pocketnote/R$array;,
        Lchan/android/app/pocketnote/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x151944bc1fe20467L    # 4.919062915914396E-207

    const-string v2, "chan/android/app/pocketnote/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
