.class Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$2;
.super Ljava/lang/Object;
.source "DeadlineDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;->removeDeadline()V

    .line 63
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->dismiss()V

    return-void
.end method
