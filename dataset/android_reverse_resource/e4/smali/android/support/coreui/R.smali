.class public final Landroid/support/coreui/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/coreui/R$styleable;,
        Landroid/support/coreui/R$style;,
        Landroid/support/coreui/R$string;,
        Landroid/support/coreui/R$layout;,
        Landroid/support/coreui/R$integer;,
        Landroid/support/coreui/R$id;,
        Landroid/support/coreui/R$drawable;,
        Landroid/support/coreui/R$dimen;,
        Landroid/support/coreui/R$color;,
        Landroid/support/coreui/R$bool;,
        Landroid/support/coreui/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/coreui/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4be4449cd8aedce7L    # 3.975762898702378E57

    const-string/jumbo v2, "android/support/coreui/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/coreui/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/coreui/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
