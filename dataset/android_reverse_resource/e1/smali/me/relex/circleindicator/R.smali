.class public final Lme/relex/circleindicator/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/circleindicator/R$styleable;,
        Lme/relex/circleindicator/R$id;,
        Lme/relex/circleindicator/R$drawable;,
        Lme/relex/circleindicator/R$attr;,
        Lme/relex/circleindicator/R$animator;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/relex/circleindicator/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1ce5d0186391a5e3L    # -2.470730913402328E169

    const-string v2, "me/relex/circleindicator/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/relex/circleindicator/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/relex/circleindicator/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
