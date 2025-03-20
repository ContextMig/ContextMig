.class public final Lluankevinferreira/expenses/R$mipmap;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lluankevinferreira/expenses/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "mipmap"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ic_launcher:I = 0x7f030000


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/R$mipmap;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x227b2b5f14024079L    # -3.1751872261730265E142

    const-string v2, "luankevinferreira/expenses/R$mipmap"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/R$mipmap;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/R$mipmap;->$jacocoInit()[Z

    move-result-object v0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
