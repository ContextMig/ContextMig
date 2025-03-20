.class public final Lcz/martykan/forecastie/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final extensive_widget:I = 0x7f060000

.field public static final prefs:I = 0x7f060001

.field public static final simple_widget:I = 0x7f060002

.field public static final time_widget:I = 0x7f060003


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/R$xml;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2556c1bb12bf6c86L    # 8.207526777986291E-129

    const-string v2, "cz/martykan/forecastie/R$xml"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/R$xml;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/R$xml;->$jacocoInit()[Z

    move-result-object v0

    .line 3460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
