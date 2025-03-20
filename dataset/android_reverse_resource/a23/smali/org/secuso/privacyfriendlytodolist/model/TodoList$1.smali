.class final Lorg/secuso/privacyfriendlytodolist/model/TodoList$1;
.super Ljava/lang/Object;
.source "TodoList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/TodoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/secuso/privacyfriendlytodolist/model/TodoList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList$1;->createFromParcel(Landroid/os/Parcel;)Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/secuso/privacyfriendlytodolist/model/TodoList;
    .locals 1

    .line 87
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-direct {v0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList$1;->newArray(I)[Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/secuso/privacyfriendlytodolist/model/TodoList;
    .locals 0

    .line 92
    new-array p1, p1, [Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    return-object p1
.end method
