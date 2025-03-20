.class public final enum Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;
.super Ljava/lang/Enum;
.source "DBQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObjectStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

.field public static final enum INSERT_TO_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

.field public static final enum NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

.field public static final enum UPDATE_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 157
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    const-string v1, "INSERT_TO_DB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->INSERT_TO_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    .line 158
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    const-string v1, "UPDATE_DB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->UPDATE_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    .line 159
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    const-string v1, "NO_DB_ACTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    const/4 v0, 0x3

    .line 156
    new-array v0, v0, [Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->INSERT_TO_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    aput-object v1, v0, v2

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->UPDATE_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    aput-object v1, v0, v3

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->NO_DB_ACTION:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    aput-object v1, v0, v4

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;
    .locals 1

    .line 156
    const-class v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    return-object p0
.end method

.method public static values()[Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;
    .locals 1

    .line 156
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    invoke-virtual {v0}, [Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    return-object v0
.end method
