.class public final Lluankevinferreira/expenses/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lluankevinferreira/expenses/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final expense_types:I = 0x7f090000


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/R$array;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x162fb6b8e37e5b45L

    const-string v2, "luankevinferreira/expenses/R$array"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/R$array;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/R$array;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
