.class Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 118
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 122
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)V

    .line 123
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$200(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    .line 124
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    invoke-static {p2, p3, p4}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$300(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;J)Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    iget-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-static {p3}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$500(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p2, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$402(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 126
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$400(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    const p3, 0x7f0e0088

    invoke-virtual {p2, p3}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$400(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;->access$600(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarActivity;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
