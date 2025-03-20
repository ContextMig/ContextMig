.class public final enum Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;
.super Ljava/lang/Enum;
.source "ExpandableTodoTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

.field public static final enum ALL_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

.field public static final enum COMPLETED_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

.field public static final enum OPEN_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    const-string v1, "ALL_TASKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->ALL_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    .line 69
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    const-string v1, "COMPLETED_TASKS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->COMPLETED_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    .line 70
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    const-string v1, "OPEN_TASKS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->OPEN_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    const/4 v0, 0x3

    .line 67
    new-array v0, v0, [Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->ALL_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->COMPLETED_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->OPEN_TASKS:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    aput-object v1, v0, v4

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;
    .locals 1

    .line 67
    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    return-object p0
.end method

.method public static values()[Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;
    .locals 1

    .line 67
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->$VALUES:[Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    invoke-virtual {v0}, [Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$Filter;

    return-object v0
.end method
