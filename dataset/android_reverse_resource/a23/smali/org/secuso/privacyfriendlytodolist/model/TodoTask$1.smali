.class final Lorg/secuso/privacyfriendlytodolist/model/TodoTask$1;
.super Ljava/lang/Object;
.source "TodoTask.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$1;->createFromParcel(Landroid/os/Parcel;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
    .locals 1

    .line 189
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {v0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$1;->newArray(I)[Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/secuso/privacyfriendlytodolist/model/TodoTask;
    .locals 0

    .line 194
    new-array p1, p1, [Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    return-object p1
.end method
