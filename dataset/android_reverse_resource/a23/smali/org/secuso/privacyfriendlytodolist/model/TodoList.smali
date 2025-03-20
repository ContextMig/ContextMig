.class public Lorg/secuso/privacyfriendlytodolist/model/TodoList;
.super Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;
.source "TodoList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUMMY_LIST_ID:I = -0x3

.field public static final PARCELABLE_KEY:Ljava/lang/String; = "PARCELABLE_KEY_FOR_TODO_LIST"

.field public static final UNIQUE_DATABASE_ID:Ljava/lang/String; = "CURRENT_TODO_LIST_ID"


# instance fields
.field private tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoList$1;

    invoke-direct {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoList$1;-><init>()V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->id:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->name:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public checkQueryMatch(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->checkQueryMatch(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public checkQueryMatch(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 170
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    move v2, v1

    .line 174
    :goto_0
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 175
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v3, p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->checkQueryMatch(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    const/high16 v0, -0x1000000

    return v0
.end method

.method public getDeadlineColor(J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 148
    sget-object v3, Lorg/secuso/privacyfriendlytodolist/model/TodoList$2;->$SwitchMap$org$secuso$privacyfriendlytodolist$model$TodoTask$DeadlineColors:[I

    invoke-virtual {v2, p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadlineColor(J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    move-result-object v2

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :pswitch_1
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->RED:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-object p1

    :cond_0
    if-lez v1, :cond_1

    .line 159
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ORANGE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-object p1

    .line 160
    :cond_1
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->BLUE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDoneTodos()I
    .locals 5

    .line 78
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 79
    invoke-virtual {v3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getNextDeadline()J
    .locals 11

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    move-wide v3, v0

    .line 111
    :goto_0
    iget-object v5, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 113
    iget-object v5, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 115
    invoke-virtual {v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v6

    if-nez v6, :cond_1

    cmp-long v6, v3, v0

    const-wide/16 v7, 0x0

    if-nez v6, :cond_0

    .line 116
    invoke-virtual {v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-lez v6, :cond_0

    .line 117
    invoke-virtual {v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v3

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {v5}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    move-wide v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v3
.end method

.method public getSize()I
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isDummyList()Z
    .locals 2

    .line 53
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->id:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDummyList()V
    .locals 1

    const/4 v0, -0x3

    .line 57
    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->id:I

    return-void
.end method

.method public setTasks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 103
    iget p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
