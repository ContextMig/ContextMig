.class public Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;
.super Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;
.source "DeadlineDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;
    }
.end annotation


# instance fields
.field private callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3

    const v0, 0x7f0b0028

    .line 37
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :goto_0
    const p2, 0x7f090068

    .line 42
    invoke-virtual {p0, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/DatePicker;

    const/4 p3, 0x1

    .line 43
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/DatePicker;->updateDate(III)V

    const p1, 0x7f09002f

    .line 45
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 46
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$1;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09002e

    .line 58
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 59
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$2;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;

    return-object p0
.end method


# virtual methods
.method public setCallback(Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;

    return-void
.end method
