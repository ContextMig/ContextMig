.class public Lorg/secuso/privacyfriendlytodolist/model/ReminderService$ReminderServiceBinder;
.super Landroid/os/Binder;
.source "ReminderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/model/ReminderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReminderServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;


# direct methods
.method public constructor <init>(Lorg/secuso/privacyfriendlytodolist/model/ReminderService;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService$ReminderServiceBinder;->this$0:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lorg/secuso/privacyfriendlytodolist/model/ReminderService;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService$ReminderServiceBinder;->this$0:Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    return-object v0
.end method
