.class Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$1;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$000(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->incMonth(I)V

    .line 106
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$000(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->refresh()V

    return-void
.end method
