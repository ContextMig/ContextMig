.class public final Landroid/support/design/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/R$styleable;,
        Landroid/support/design/R$style;,
        Landroid/support/design/R$string;,
        Landroid/support/design/R$layout;,
        Landroid/support/design/R$integer;,
        Landroid/support/design/R$id;,
        Landroid/support/design/R$drawable;,
        Landroid/support/design/R$dimen;,
        Landroid/support/design/R$color;,
        Landroid/support/design/R$bool;,
        Landroid/support/design/R$attr;,
        Landroid/support/design/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/design/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7f578ff70cb94eaL

    const-string v2, "android/support/design/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/design/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/design/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
