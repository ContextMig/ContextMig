.class public Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TodoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public deadline:Landroid/widget/TextView;

.field public done:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

.field public title:Landroid/widget/TextView;

.field public urgency:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;Landroid/view/View;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    .line 143
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09013d

    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f09013a

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->deadline:Landroid/widget/TextView;

    const p1, 0x7f09013c

    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->done:Landroid/widget/TextView;

    const p1, 0x7f09014d

    .line 147
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->urgency:Landroid/view/View;

    .line 149
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 156
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 159
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;)Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    invoke-static {v2}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->setClickedList(Lorg/secuso/privacyfriendlytodolist/model/TodoList;)V

    const-string v0, "SHOW_FAB"

    .line 160
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-direct {v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;-><init>()V

    .line 162
    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 170
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;)Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    move-result-object p2

    iget-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    invoke-static {p3}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;)Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    move-result-object p3

    const v0, 0x7f0e00a6

    invoke-virtual {p3, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getMenuHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 171
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter$ViewHolder;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;)Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const p3, 0x7f0c0006

    .line 172
    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method
