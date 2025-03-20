.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->initFab(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

.field final synthetic val$helpExists:Z

.field final synthetic val$helpId:I


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;IZ)V
    .locals 0

    .line 943
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iput p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->val$helpId:I

    iput-boolean p3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->val$helpExists:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 946
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;-><init>(Landroid/content/Context;)V

    .line 947
    iget v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->val$helpId:I

    iget-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;->val$helpExists:Z

    invoke-virtual {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->setListSelector(IZ)V

    .line 948
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity$6;)V

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V

    .line 963
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->show()V

    return-void
.end method
