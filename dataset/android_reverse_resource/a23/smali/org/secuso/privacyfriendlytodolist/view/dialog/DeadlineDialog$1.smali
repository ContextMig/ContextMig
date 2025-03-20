.class Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$1;
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

    .line 46
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 49
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;

    const v0, 0x7f090068

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/DatePicker;

    .line 50
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 52
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;->setDeadline(J)V

    .line 54
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->dismiss()V

    return-void
.end method
