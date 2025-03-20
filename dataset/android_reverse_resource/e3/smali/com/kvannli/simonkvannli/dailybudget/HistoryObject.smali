.class public Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;
.super Ljava/lang/Object;
.source "HistoryObject.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private _date:Ljava/lang/String;

.field private _dateTime:Ljava/lang/String;

.field private _historyNote:Ljava/lang/String;

.field private _id:I

.field private _minus:Z

.field private _time:Ljava/lang/String;

.field private _value:D


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6950b8582c7a2531L    # 1.9997508893454182E199

    const-string v2, "com/kvannli/simonkvannli/dailybudget/HistoryObject"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(ILjava/lang/String;DZ)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_id:I

    .line 23
    iput-object p2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_historyNote:Ljava/lang/String;

    .line 24
    iput-wide p3, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_value:D

    .line 25
    iput-boolean p5, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_minus:Z

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;DZLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_id:I

    .line 35
    iput-object p2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_historyNote:Ljava/lang/String;

    .line 36
    iput-wide p3, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_value:D

    .line 37
    iput-boolean p5, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_minus:Z

    .line 38
    iput-object p6, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_dateTime:Ljava/lang/String;

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 40
    const-string v2, " "

    invoke-virtual {p6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_date:Ljava/lang/String;

    .line 42
    aget-object v2, v0, v3

    iput-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_time:Ljava/lang/String;

    .line 43
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_historyNote:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_value:D

    .line 30
    iput-boolean p4, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_minus:Z

    .line 31
    aput-boolean v1, v0, v1

    return-void
.end method


# virtual methods
.method public get_date()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_date:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get_historyNote()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_historyNote:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get_id()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_id:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public get_time()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_time:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public get_value()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    iget-wide v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_value:D

    const/16 v1, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public is_minus()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->_minus:Z

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
