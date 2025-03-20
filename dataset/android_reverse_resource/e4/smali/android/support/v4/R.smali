.class public final Landroid/support/v4/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/R$styleable;,
        Landroid/support/v4/R$style;,
        Landroid/support/v4/R$string;,
        Landroid/support/v4/R$layout;,
        Landroid/support/v4/R$integer;,
        Landroid/support/v4/R$id;,
        Landroid/support/v4/R$drawable;,
        Landroid/support/v4/R$dimen;,
        Landroid/support/v4/R$color;,
        Landroid/support/v4/R$bool;,
        Landroid/support/v4/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v4/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7cf1f7ccfc357b0L    # -8.916027740498754E270

    const-string/jumbo v2, "android/support/v4/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v4/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v4/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
