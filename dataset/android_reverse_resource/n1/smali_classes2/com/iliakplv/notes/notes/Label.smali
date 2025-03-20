.class public Lcom/iliakplv/notes/notes/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private color:I

.field private id:Ljava/io/Serializable;

.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/Label;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2d84386fa57cd111L    # -2.2104662283054024E89

    const-string v2, "com/iliakplv/notes/notes/Label"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/Label;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/Label;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v1, Lcom/iliakplv/notes/notes/NotesUtils;->DEFAULT_ID:Ljava/io/Serializable;

    iput-object v1, p0, Lcom/iliakplv/notes/notes/Label;->id:Ljava/io/Serializable;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 16
    invoke-virtual {p0, p1}, Lcom/iliakplv/notes/notes/Label;->setName(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    .line 17
    invoke-virtual {p0, p2}, Lcom/iliakplv/notes/notes/Label;->setColor(I)V

    .line 18
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/Label;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget v1, p0, Lcom/iliakplv/notes/notes/Label;->color:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getId()Ljava/io/Serializable;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/Label;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/iliakplv/notes/notes/Label;->id:Ljava/io/Serializable;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/Label;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/iliakplv/notes/notes/Label;->name:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setColor(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/Label;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iput p1, p0, Lcom/iliakplv/notes/notes/Label;->color:I

    .line 35
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setId(Ljava/io/Serializable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/Label;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/iliakplv/notes/notes/NotesUtils;->getValidNoteId(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/Label;->id:Ljava/io/Serializable;

    .line 43
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/Label;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->getNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/Label;->name:Ljava/lang/String;

    .line 27
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
