.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$4;
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

    .line 85
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 88
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/DatePicker;

    .line 89
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    const v1, 0x7f090121

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    .line 90
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 92
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;->setReminder(J)V

    .line 94
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->dismiss()V

    return-void
.end method
