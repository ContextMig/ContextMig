.class Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;
.super Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;
.source "CustomTabMenuItemViewHolder.java"


# instance fields
.field private menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    return-void
.end method


# virtual methods
.method bind(Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->bind(Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;)V

    .line 59
    invoke-virtual {p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;->pendingIntent:Landroid/app/PendingIntent;

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    invoke-virtual {v1}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->dismiss()V

    .line 40
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No PendingIntent set for CustomTabMenuItemViewHolder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;->browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->customTabMenuEvent()V

    .line 54
    return-void

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setMenu(Lorg/mozilla/focus/menu/browser/BrowserMenu;)V
    .locals 0
    .param p1, "menu"    # Lorg/mozilla/focus/menu/browser/BrowserMenu;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    .line 30
    return-void
.end method
