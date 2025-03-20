.class Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "TodoRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 40
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 45
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;)V

    return-void
.end method
