.class synthetic Lorg/secuso/privacyfriendlytodolist/model/TodoList$2;
.super Ljava/lang/Object;
.source "TodoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/TodoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 148
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoList$2;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

    :try_start_0
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoList$2;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->RED:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoList$2;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ORANGE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
