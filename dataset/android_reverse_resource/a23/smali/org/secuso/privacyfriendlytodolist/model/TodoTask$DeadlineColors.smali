.class public final enum Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;
.super Ljava/lang/Enum;
.source "TodoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeadlineColors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

.field public static final enum BLUE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

.field public static final enum ORANGE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

.field public static final enum RED:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    const-string v1, "BLUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->BLUE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    .line 67
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    const-string v1, "ORANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ORANGE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    .line 68
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    const-string v1, "RED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->RED:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    const/4 v0, 0x3

    .line 65
    new-array v0, v0, [Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->BLUE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    aput-object v1, v0, v2

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ORANGE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    aput-object v1, v0, v3

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->RED:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    aput-object v1, v0, v4

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;
    .locals 1

    .line 65
    const-class v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-object p0
.end method

.method public static values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;
    .locals 1

    .line 65
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    invoke-virtual {v0}, [Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-object v0
.end method
