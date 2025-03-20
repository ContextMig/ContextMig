.class public Lcom/iliakplv/notes/notes/LabelComparator;
.super Ljava/lang/Object;
.source "LabelComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/iliakplv/notes/notes/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/LabelComparator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x61cc05dcbb8465bdL    # -3.469084002798291E-163

    const-string v2, "com/iliakplv/notes/notes/LabelComparator"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/LabelComparator;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/LabelComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public compare(Lcom/iliakplv/notes/notes/Label;Lcom/iliakplv/notes/notes/Label;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/LabelComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    aput-boolean v3, v0, v3

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/LabelComparator;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    check-cast p1, Lcom/iliakplv/notes/notes/Label;

    check-cast p2, Lcom/iliakplv/notes/notes/Label;

    invoke-virtual {p0, p1, p2}, Lcom/iliakplv/notes/notes/LabelComparator;->compare(Lcom/iliakplv/notes/notes/Label;Lcom/iliakplv/notes/notes/Label;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
