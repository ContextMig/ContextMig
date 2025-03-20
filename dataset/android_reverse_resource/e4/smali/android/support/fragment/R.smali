.class public final Landroid/support/fragment/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/fragment/R$styleable;,
        Landroid/support/fragment/R$style;,
        Landroid/support/fragment/R$string;,
        Landroid/support/fragment/R$layout;,
        Landroid/support/fragment/R$integer;,
        Landroid/support/fragment/R$id;,
        Landroid/support/fragment/R$drawable;,
        Landroid/support/fragment/R$dimen;,
        Landroid/support/fragment/R$color;,
        Landroid/support/fragment/R$bool;,
        Landroid/support/fragment/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/fragment/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7a2c68451b079939L

    const-string/jumbo v2, "android/support/fragment/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/fragment/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/fragment/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
