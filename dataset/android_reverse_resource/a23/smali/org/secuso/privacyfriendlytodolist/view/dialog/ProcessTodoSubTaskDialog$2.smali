.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$2;
.super Ljava/lang/Object;
.source "ProcessTodoSubTaskDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->initGui()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->dismiss()V

    return-void
.end method
