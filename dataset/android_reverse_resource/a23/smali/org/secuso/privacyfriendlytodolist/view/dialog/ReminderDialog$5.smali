.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$5;
.super Ljava/lang/Object;
.source "ReminderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;-><init>(Landroid/content/Context;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$5;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$5;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;

    move-result-object p1

    invoke-interface {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;->removeReminder()V

    .line 103
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$5;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->dismiss()V

    return-void
.end method
