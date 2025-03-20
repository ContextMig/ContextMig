.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 854
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->access$800(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getAllToDoLists(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object p2

    .line 855
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 856
    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getId()I

    move-result v1

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;

    invoke-static {v2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->access$900(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 857
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->access$800(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->deleteTodoList(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoList;)V

    goto :goto_0

    .line 860
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 861
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->access$800(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x4000000

    .line 862
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 863
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;

    iget-object p2, p2, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$OnCustomMenuItemClickListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {p2, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
