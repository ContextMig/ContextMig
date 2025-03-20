.class public Lorg/mozilla/focus/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    new-instance v0, Lorg/mozilla/focus/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/customtabs/CustomTabsService$1;-><init>(Lorg/mozilla/focus/customtabs/CustomTabsService;)V

    return-object v0
.end method
