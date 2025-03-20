.class public final Lcom/iliakplv/notes/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/R$xml;,
        Lcom/iliakplv/notes/R$style;,
        Lcom/iliakplv/notes/R$string;,
        Lcom/iliakplv/notes/R$menu;,
        Lcom/iliakplv/notes/R$layout;,
        Lcom/iliakplv/notes/R$integer;,
        Lcom/iliakplv/notes/R$id;,
        Lcom/iliakplv/notes/R$drawable;,
        Lcom/iliakplv/notes/R$dimen;,
        Lcom/iliakplv/notes/R$color;,
        Lcom/iliakplv/notes/R$attr;,
        Lcom/iliakplv/notes/R$array;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1ab602902083fe6dL    # 5.304236443590769E-180

    const-string v2, "com/iliakplv/notes/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
