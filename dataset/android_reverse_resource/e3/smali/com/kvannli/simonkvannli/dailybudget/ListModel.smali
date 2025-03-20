.class public Lcom/kvannli/simonkvannli/dailybudget/ListModel;
.super Ljava/lang/Object;
.source "ListModel.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private Image:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private interval:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private show:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3217660221b1d30aL    # -2.0726748000972418E67

    const-string v2, "com/kvannli/simonkvannli/dailybudget/ListModel"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v1, ""

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->name:Ljava/lang/String;

    .line 6
    const-string v1, ""

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->Image:Ljava/lang/String;

    .line 7
    const-string v1, ""

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->value:Ljava/lang/String;

    .line 8
    const-string v1, ""

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->id:Ljava/lang/String;

    .line 9
    const-string v1, ""

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->interval:Ljava/lang/String;

    .line 10
    const-string v1, ""

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->show:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->id:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getImage()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->Image:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getInterval()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->interval:Ljava/lang/String;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->name:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getShow()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->show:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->value:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->id:Ljava/lang/String;

    .line 22
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->Image:Ljava/lang/String;

    .line 31
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setInterval(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->interval:Ljava/lang/String;

    .line 26
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->name:Ljava/lang/String;

    .line 18
    aput-boolean v1, v0, v1

    return-void
.end method

.method public setShow(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->show:Ljava/lang/String;

    .line 40
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->value:Ljava/lang/String;

    .line 36
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
