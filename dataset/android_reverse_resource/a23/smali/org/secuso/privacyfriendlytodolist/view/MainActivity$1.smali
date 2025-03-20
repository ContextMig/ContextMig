.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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

    .line 151
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$000(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    .line 164
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setQueryString(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$000(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    .line 156
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setQueryString(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    return p1
.end method
