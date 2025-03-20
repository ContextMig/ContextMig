.class public final Landroid/support/graphics/drawable/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/R$styleable;,
        Landroid/support/graphics/drawable/R$style;,
        Landroid/support/graphics/drawable/R$string;,
        Landroid/support/graphics/drawable/R$layout;,
        Landroid/support/graphics/drawable/R$integer;,
        Landroid/support/graphics/drawable/R$id;,
        Landroid/support/graphics/drawable/R$drawable;,
        Landroid/support/graphics/drawable/R$dimen;,
        Landroid/support/graphics/drawable/R$color;,
        Landroid/support/graphics/drawable/R$bool;,
        Landroid/support/graphics/drawable/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/graphics/drawable/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x292c5ad08b7950b4L    # -1.8455087503639643E110

    const-string/jumbo v2, "android/support/graphics/drawable/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/graphics/drawable/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
