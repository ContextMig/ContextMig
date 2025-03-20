.class public final Lcom/caldroid/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caldroid/R$styleable;,
        Lcom/caldroid/R$style;,
        Lcom/caldroid/R$string;,
        Lcom/caldroid/R$layout;,
        Lcom/caldroid/R$id;,
        Lcom/caldroid/R$drawable;,
        Lcom/caldroid/R$color;,
        Lcom/caldroid/R$attr;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/caldroid/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x30113b1b0d04c5bfL    # 3.720219927537861E-77

    const-string v2, "com/caldroid/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/caldroid/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/caldroid/R;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
