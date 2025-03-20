.class Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;
.super Ljava/lang/Object;
.source "TodoListWidgetConfigureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    .line 60
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->access$000(Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->getSelectedItem()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    iget v1, v1, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mAppWidgetId:I

    invoke-static {p1, v1, v0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->saveTitlePref(Landroid/content/Context;ILjava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    iget v0, v0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mAppWidgetId:I

    invoke-static {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;->getListName(Landroid/content/Context;I)Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    iget v0, v0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mAppWidgetId:I

    invoke-static {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidget;->getListName(Landroid/content/Context;I)V

    .line 70
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "appWidgetId"

    .line 71
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    iget v1, v1, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->mAppWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    .line 73
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/widget/TodoListWidgetConfigureActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "No list available"

    const/4 v1, 0x0

    .line 75
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
