.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$1;
.super Ljava/lang/Object;
.source "ReminderDialog.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


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

    .line 48
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 51
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    const p2, 0x7f0900a4

    invoke-virtual {p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    const p2, 0x7f0900a5

    invoke-virtual {p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
