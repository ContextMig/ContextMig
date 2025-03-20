.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V
    .locals 0

    .line 999
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V
    .locals 1

    .line 1002
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->sendToDatabase(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)Z

    .line 1004
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "subtask altered"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
