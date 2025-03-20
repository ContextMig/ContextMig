.class public Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;
.super Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;
.source "TodoSubTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private done:Z

.field private inTrash:Z

.field private name:Ljava/lang/String;

.field private taskIdForeignKey:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask$1;

    invoke-direct {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask$1;-><init>()V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->done:Z

    .line 39
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->inTrash:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 42
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->id:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->name:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->done:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->taskIdForeignKey:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->inTrash:Z

    return-void
.end method


# virtual methods
.method public checkQueryMatch(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDone()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->done:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->taskIdForeignKey:J

    return-wide v0
.end method

.method public isInTrash()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->inTrash:Z

    return v0
.end method

.method public setDone(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->done:Z

    return-void
.end method

.method public setInTrash(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->inTrash:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->name:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(J)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->taskIdForeignKey:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 90
    iget p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-boolean p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->done:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-boolean p2, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->inTrash:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget-wide v0, p0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->taskIdForeignKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
