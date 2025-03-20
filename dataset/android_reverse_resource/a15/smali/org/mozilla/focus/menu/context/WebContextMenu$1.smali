.class final Lorg/mozilla/focus/menu/context/WebContextMenu$1;
.super Ljava/lang/Object;
.source "WebContextMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/menu/context/WebContextMenu;->show(Landroid/content/Context;Lorg/mozilla/focus/web/IWebView$Callback;Lorg/mozilla/focus/web/IWebView$HitTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/web/IWebView$HitTarget;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$1;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 72
    iget-object v1, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$1;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-boolean v1, v1, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$1;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-boolean v1, v1, Lorg/mozilla/focus/web/IWebView$HitTarget;->isLink:Z

    if-eqz v1, :cond_0

    .line 73
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->ImageWithLink:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    .line 82
    .local v0, "value":Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;
    :goto_0
    invoke-static {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->cancelWebContextMenuEvent(Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;)V

    .line 83
    return-void

    .line 74
    .end local v0    # "value":Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$1;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-boolean v1, v1, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    if-eqz v1, :cond_1

    .line 75
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->Image:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    .restart local v0    # "value":Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;
    goto :goto_0

    .line 77
    .end local v0    # "value":Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;
    :cond_1
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;->Link:Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;

    .restart local v0    # "value":Lorg/mozilla/focus/telemetry/TelemetryWrapper$BrowserContextMenuValue;
    goto :goto_0
.end method
