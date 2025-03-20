.class final Lde/baumann/browser/Unit/NotificationUnit$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Unit/NotificationUnit;->getHBuilder(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 34
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lde/baumann/browser/Service/HolderService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Lde/baumann/browser/Unit/IntentUnit;->setClear(Z)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 38
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->clear()V

    return-void
.end method
