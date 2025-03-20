.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ServiceConnection"

    const-string v0, "connected"

    .line 673
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/model/ReminderService$ReminderServiceBinder;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService$ReminderServiceBinder;->getService()Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$302(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;Lorg/secuso/privacyfriendlytodolist/model/ReminderService;)Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ServiceConnection"

    const-string v0, "disconnected"

    .line 679
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$302(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;Lorg/secuso/privacyfriendlytodolist/model/ReminderService;)Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    return-void
.end method
