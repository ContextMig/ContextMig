.class public Lbr/com/bean/ShoppingList;
.super Ljava/lang/Object;
.source "ShoppingList.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private date:Ljava/util/Date;

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/bean/ShoppingList;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5efb196a7a6d2L

    const-string v2, "br/com/bean/ShoppingList"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/bean/ShoppingList;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    const v2, 0x7f050054

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v1, v2, v3}, Lbr/com/bean/ShoppingList;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Date;)V

    .line 39
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Date;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/bean/ShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 42
    invoke-virtual {p0, p2}, Lbr/com/bean/ShoppingList;->setId(I)V

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 43
    invoke-virtual {p0, p1, p3}, Lbr/com/bean/ShoppingList;->setName(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 44
    invoke-virtual {p0, p4}, Lbr/com/bean/ShoppingList;->setDate(Ljava/util/Date;)V

    .line 45
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lbr/com/bean/ShoppingList;->date:Ljava/util/Date;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    iget v1, p0, Lbr/com/bean/ShoppingList;->id:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/bean/ShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lbr/com/bean/ShoppingList;->name:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/bean/ShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iput-object p1, p0, Lbr/com/bean/ShoppingList;->date:Ljava/util/Date;

    .line 35
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setId(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lbr/com/bean/ShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iput p1, p0, Lbr/com/bean/ShoppingList;->id:I

    .line 19
    aput-boolean v1, v0, v1

    return-void
.end method

.method public setName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/bean/ShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f050054

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    :goto_0
    iput-object p2, p0, Lbr/com/bean/ShoppingList;->name:Ljava/lang/String;

    .line 27
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void

    .line 26
    :cond_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
