.class public abstract Lcom/iliakplv/notes/notes/AbstractNote;
.super Ljava/lang/Object;
.source "AbstractNote.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private body:Ljava/lang/String;

.field private changeTime:Lorg/joda/time/DateTime;

.field private createTime:Lorg/joda/time/DateTime;

.field private id:Ljava/io/Serializable;

.field private title:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x17f374116f3edfcL    # -2.248046897983275E301

    const-string v2, "com/iliakplv/notes/notes/AbstractNote"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v1, Lcom/iliakplv/notes/notes/NotesUtils;->DEFAULT_ID:Ljava/io/Serializable;

    iput-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->id:Ljava/io/Serializable;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 19
    invoke-virtual {p0, p1}, Lcom/iliakplv/notes/notes/AbstractNote;->setTitle(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    .line 20
    invoke-virtual {p0, p2}, Lcom/iliakplv/notes/notes/AbstractNote;->setBody(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 21
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->createTime:Lorg/joda/time/DateTime;

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 22
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->changeTime:Lorg/joda/time/DateTime;

    .line 23
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->body:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getChangeTime()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->changeTime:Lorg/joda/time/DateTime;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCreateTime()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->createTime:Lorg/joda/time/DateTime;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()Ljava/io/Serializable;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->id:Ljava/io/Serializable;

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->title:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->getNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->body:Ljava/lang/String;

    .line 42
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setChangeTime(Lorg/joda/time/DateTime;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    if-nez p1, :cond_0

    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    .line 64
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Note\'s change time can not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    throw v1

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->changeTime:Lorg/joda/time/DateTime;

    .line 67
    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setCreateTime(Lorg/joda/time/DateTime;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    if-nez p1, :cond_0

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 53
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Note\'s create time can not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    throw v1

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->createTime:Lorg/joda/time/DateTime;

    .line 56
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setId(Ljava/io/Serializable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    invoke-static {p1}, Lcom/iliakplv/notes/notes/NotesUtils;->getValidNoteId(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->id:Ljava/io/Serializable;

    .line 79
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->getNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->title:Ljava/lang/String;

    .line 34
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public updateChangeTime()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/AbstractNote;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v1, p0, Lcom/iliakplv/notes/notes/AbstractNote;->changeTime:Lorg/joda/time/DateTime;

    .line 71
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
