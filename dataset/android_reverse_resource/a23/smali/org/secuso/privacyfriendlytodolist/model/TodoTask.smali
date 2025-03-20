.class public Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
.super Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;
.source "TodoTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;,
        Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARCELABLE_KEY:Ljava/lang/String; = "key_for_parcels"

.field private static final TAG:Ljava/lang/String; = "TodoTask"


# instance fields
.field protected deadline:J

.field private done:Z

.field private inTrash:Z

.field private listIdForeignKey:I

.field private listName:Ljava/lang/String;

.field private listPosition:I

.field private priority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

.field private progress:I

.field private reminderTime:J

.field private reminderTimeChanged:Z

.field private reminderTimeWasInitialized:Z

.field private subTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$1;

    invoke-direct {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$1;-><init>()V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;-><init>()V

    const-wide/16 v0, -0x1

    .line 75
    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTime:J

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeChanged:Z

    .line 81
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeWasInitialized:Z

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    .line 89
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->done:Z

    .line 90
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->inTrash:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 105
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;-><init>()V

    const-wide/16 v0, -0x1

    .line 75
    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTime:J

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeChanged:Z

    .line 81
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeWasInitialized:Z

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->id:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listIdForeignKey:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->description:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->done:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->inTrash:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->progress:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTime:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listPosition:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->fromInt(I)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->priority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    .line 117
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public checkQueryMatch(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 310
    invoke-virtual {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->checkQueryMatch(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public checkQueryMatch(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 300
    :cond_1
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    move p2, v1

    .line 303
    :goto_0
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 304
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-virtual {v2, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->checkQueryMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doneStatusChanged()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 277
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 278
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getDone()Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->done:Z

    if-eq v0, v1, :cond_1

    .line 284
    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;->UPDATE_DB:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    iput-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->dbState:Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler$ObjectStates;

    .line 288
    :cond_1
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->done:Z

    return-void
.end method

.method public getDeadline()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    return-wide v0
.end method

.method public getDeadlineColor(J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;
    .locals 8

    .line 170
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->done:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 172
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getCurrentTimestamp()J

    move-result-wide v0

    .line 173
    iget-wide v4, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTime:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    iget-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    iget-wide v4, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTime:J

    sub-long v6, p1, v4

    move-wide p1, v6

    .line 175
    :cond_0
    iget-wide v4, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    sub-long v6, v4, p1

    cmp-long p1, v0, v6

    if-ltz p1, :cond_1

    iget-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    .line 176
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->ORANGE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-object p1

    .line 178
    :cond_1
    iget-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    cmp-long v4, v0, p1

    if-lez v4, :cond_2

    iget-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 179
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->RED:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-object p1

    .line 182
    :cond_2
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;->BLUE:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$DeadlineColors;

    return-object p1
.end method

.method public getDone()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->done:Z

    return v0
.end method

.method public getListId()I
    .locals 1

    .line 232
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listIdForeignKey:I

    return v0
.end method

.method public getListName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listName:Ljava/lang/String;

    return-object v0
.end method

.method public getListPosition()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listPosition:I

    return v0
.end method

.method public getPriority()Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->priority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->progress:I

    return v0
.end method

.method public getReminderTime()J
    .locals 2

    .line 224
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTime:J

    return-wide v0
.end method

.method public getSubTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 5

    .line 102
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInTrash()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->inTrash:Z

    return v0
.end method

.method public reminderTimeChanged()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeChanged:Z

    return v0
.end method

.method public resetReminderTimeChangedStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeChanged:Z

    return-void
.end method

.method public setAllSubTasksDone(Z)V
    .locals 2

    .line 265
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 266
    invoke-virtual {v1, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setDone(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDeadline(J)V
    .locals 0

    .line 125
    iput-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    return-void
.end method

.method public setDone(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->done:Z

    return-void
.end method

.method public setInTrash(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->inTrash:Z

    return-void
.end method

.method public setListId(I)V
    .locals 0

    .line 228
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listIdForeignKey:I

    return-void
.end method

.method public setListName(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listName:Ljava/lang/String;

    return-void
.end method

.method public setPositionInList(I)V
    .locals 0

    .line 129
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listPosition:I

    return-void
.end method

.method public setPriority(Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->priority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 236
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->progress:I

    return-void
.end method

.method public setReminderTime(J)V
    .locals 5

    .line 241
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 242
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->TAG:Ljava/lang/String;

    const-string p2, "Reminder time must not be greater than the deadline."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_0
    iput-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTime:J

    .line 250
    :goto_0
    iget-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeWasInitialized:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 251
    iput-boolean p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeChanged:Z

    .line 253
    :cond_1
    iput-boolean p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTimeWasInitialized:Z

    return-void
.end method

.method public setSubTasks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 209
    iget p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listIdForeignKey:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-boolean p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->done:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 214
    iget-boolean p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->inTrash:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 215
    iget p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->deadline:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->reminderTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->listPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->priority:Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->subTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
