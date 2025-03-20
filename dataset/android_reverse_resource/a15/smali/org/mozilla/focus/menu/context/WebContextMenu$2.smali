.class final Lorg/mozilla/focus/menu/context/WebContextMenu$2;
.super Ljava/lang/Object;
.source "WebContextMenu.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/menu/context/WebContextMenu;->setupMenuForHitTarget(Landroid/app/Dialog;Landroid/support/design/widget/NavigationView;Lorg/mozilla/focus/web/IWebView$Callback;Lorg/mozilla/focus/web/IWebView$HitTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/mozilla/focus/web/IWebView$Callback;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lorg/mozilla/focus/web/IWebView$HitTarget;Lorg/mozilla/focus/web/IWebView$Callback;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iput-object p3, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v4, 0x7f0f0112

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 126
    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 179
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled menu item id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :pswitch_0
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v2

    sget-object v3, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    iget-object v4, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-object v4, v4, Lorg/mozilla/focus/web/IWebView$HitTarget;->linkURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/mozilla/focus/session/SessionManager;->createSession(Lorg/mozilla/focus/session/Source;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openLinkInNewTabEvent()V

    .line 177
    :cond_0
    :goto_0
    return v12

    .line 135
    :pswitch_1
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->shareLinkEvent()V

    .line 136
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v10, "shareIntent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-object v3, v3, Lorg/mozilla/focus/web/IWebView$HitTarget;->linkURL:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    .end local v10    # "shareIntent":Landroid/content/Intent;
    :pswitch_2
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->shareImageEvent()V

    .line 144
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v10    # "shareIntent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-object v3, v3, Lorg/mozilla/focus/web/IWebView$HitTarget;->imageURL:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    .end local v10    # "shareIntent":Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Lorg/mozilla/focus/web/Download;

    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-object v2, v2, Lorg/mozilla/focus/web/IWebView$HitTarget;->imageURL:Ljava/lang/String;

    const-wide/16 v6, -0x1

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v1 .. v8}, Lorg/mozilla/focus/web/Download;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 152
    .local v1, "download":Lorg/mozilla/focus/web/Download;
    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$callback:Lorg/mozilla/focus/web/IWebView$Callback;

    invoke-interface {v2, v1}, Lorg/mozilla/focus/web/IWebView$Callback;->onDownloadStart(Lorg/mozilla/focus/web/Download;)V

    .line 153
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->saveImageEvent()V

    goto :goto_0

    .line 158
    .end local v1    # "download":Lorg/mozilla/focus/web/Download;
    :pswitch_4
    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$dialog:Landroid/app/Dialog;

    .line 159
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    .line 160
    .local v9, "clipboard":Landroid/content/ClipboardManager;
    if-eqz v9, :cond_0

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0900a7

    if-ne v2, v3, :cond_1

    .line 166
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->copyLinkEvent()V

    .line 167
    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-object v2, v2, Lorg/mozilla/focus/web/IWebView$HitTarget;->linkURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 175
    .local v11, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "URI"

    invoke-static {v2, v3, v11}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 176
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v9, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto/16 :goto_0

    .line 168
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0900a4

    if-ne v2, v3, :cond_2

    .line 169
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->copyImageEvent()V

    .line 170
    iget-object v2, p0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;->val$hitTarget:Lorg/mozilla/focus/web/IWebView$HitTarget;

    iget-object v2, v2, Lorg/mozilla/focus/web/IWebView$HitTarget;->imageURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .restart local v11    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 172
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown hitTarget type - cannot copy to clipboard"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900a4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
