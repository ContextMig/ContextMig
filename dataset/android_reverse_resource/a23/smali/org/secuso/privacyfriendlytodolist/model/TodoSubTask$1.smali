.class final Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask$1;
.super Ljava/lang/Object;
.source "TodoSubTask.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask$1;->createFromParcel(Landroid/os/Parcel;)Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;
    .locals 1

    .line 74
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-direct {v0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask$1;->newArray(I)[Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;
    .locals 0

    .line 79
    new-array p1, p1, [Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    return-object p1
.end method
