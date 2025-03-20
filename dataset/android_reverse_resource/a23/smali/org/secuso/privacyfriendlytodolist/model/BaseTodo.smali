.class public abstract Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;
.super Ljava/lang/Object;
.source "BaseTodo.java"


# instance fields
.field protected dbState:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

.field protected description:Ljava/lang/String;

.field protected id:I

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->dbState:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    return-void
.end method


# virtual methods
.method public getDBState()Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->dbState:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setChanged()V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->dbState:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    if-ne v0, v1, :cond_0

    .line 43
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->UPDATE_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->dbState:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    :cond_0
    return-void
.end method

.method public setCreated()V
    .locals 1

    .line 38
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->INSERT_TO_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->dbState:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 55
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->name:Ljava/lang/String;

    return-void
.end method

.method public setUnchanged()V
    .locals 1

    .line 47
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;->dbState:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    return-void
.end method
