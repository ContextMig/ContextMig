.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$3;
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

    .line 74
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    const v0, 0x7f0900a4

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    const v0, 0x7f0900a5

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
