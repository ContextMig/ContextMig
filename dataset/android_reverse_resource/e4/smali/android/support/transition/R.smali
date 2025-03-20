.class public final Landroid/support/transition/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/R$styleable;,
        Landroid/support/transition/R$style;,
        Landroid/support/transition/R$string;,
        Landroid/support/transition/R$layout;,
        Landroid/support/transition/R$integer;,
        Landroid/support/transition/R$id;,
        Landroid/support/transition/R$drawable;,
        Landroid/support/transition/R$dimen;,
        Landroid/support/transition/R$color;,
        Landroid/support/transition/R$bool;,
        Landroid/support/transition/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/transition/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6e5dfa0ccf891d41L    # 4.334324887540948E223

    const-string/jumbo v2, "android/support/transition/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/transition/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/transition/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
