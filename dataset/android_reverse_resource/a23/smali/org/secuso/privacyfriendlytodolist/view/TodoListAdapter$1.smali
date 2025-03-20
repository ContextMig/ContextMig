.class Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$1;
.super Ljava/lang/Object;
.source "TodoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->onBindViewHolder(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

.field final synthetic val$holder:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$1;->val$holder:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 94
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$1;->val$holder:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->setPosition(I)V

    const/4 p1, 0x0

    return p1
.end method
