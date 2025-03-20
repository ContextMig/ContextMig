.class Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$1;
.super Ljava/lang/Object;
.source "RecyclerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;

.field final synthetic val$tasks:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$1;->val$tasks:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 120
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$1;->val$tasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 121
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->deleteTodoTask(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 124
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/RecyclerActivity;->updateAdapter()V

    return-void
.end method
