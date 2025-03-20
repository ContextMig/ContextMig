.class public final Landroid/support/v7/cardview/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/cardview/R$styleable;,
        Landroid/support/v7/cardview/R$style;,
        Landroid/support/v7/cardview/R$dimen;,
        Landroid/support/v7/cardview/R$color;,
        Landroid/support/v7/cardview/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/cardview/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7679f5e55c65dbf2L    # -8.748929569818853E-263

    const-string v2, "android/support/v7/cardview/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/cardview/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v7/cardview/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
