.class public final Landroid/support/v7/appcompat/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/appcompat/R$styleable;,
        Landroid/support/v7/appcompat/R$style;,
        Landroid/support/v7/appcompat/R$string;,
        Landroid/support/v7/appcompat/R$layout;,
        Landroid/support/v7/appcompat/R$integer;,
        Landroid/support/v7/appcompat/R$id;,
        Landroid/support/v7/appcompat/R$drawable;,
        Landroid/support/v7/appcompat/R$dimen;,
        Landroid/support/v7/appcompat/R$color;,
        Landroid/support/v7/appcompat/R$bool;,
        Landroid/support/v7/appcompat/R$attr;,
        Landroid/support/v7/appcompat/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/appcompat/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1a6468c4b8f90e5bL    # -2.862205985729252E181

    const-string v2, "android/support/v7/appcompat/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/appcompat/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v7/appcompat/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
