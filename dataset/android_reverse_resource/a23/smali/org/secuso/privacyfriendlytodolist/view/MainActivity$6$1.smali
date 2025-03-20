.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V
    .locals 1

    .line 951
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->sendToDatabase(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)Z

    .line 954
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->hints()V

    .line 956
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;

    iget-boolean p1, p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->val$helpExists:Z

    if-eqz p1, :cond_0

    .line 957
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;

    iget v0, v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->val$helpId:I

    invoke-static {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;I)V

    goto :goto_0

    .line 959
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
