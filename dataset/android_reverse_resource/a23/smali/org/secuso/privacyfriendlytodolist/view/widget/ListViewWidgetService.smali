.class public Lorg/secuso/privacyfriendlytodolist/view/widget/ListViewWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "ListViewWidgetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    .line 36
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/widget/ListViewWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/secuso/privacyfriendlytodolist/view/widget/WidgetViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
