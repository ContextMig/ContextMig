.class synthetic Lorg/secuso/privacyfriendlytodolist/model/Helper$1;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

.field static final synthetic $SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$Priority:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/Helper$1;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$Priority:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/Helper$1;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$Priority:[I

    sget-object v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->HIGH:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/secuso/privacyfriendlytodolist/model/Helper$1;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$Priority:[I

    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->MEDIUM:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/Helper$1;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$Priority:[I

    sget-object v4, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->LOW:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-virtual {v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    :catch_2
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->values()[Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/secuso/privacyfriendlytodolist/model/Helper$1;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

    :try_start_3
    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/Helper$1;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

    sget-object v4, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->RED:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    invoke-virtual {v4}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/Helper$1;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->BLUE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/Helper$1;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ORANGE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
