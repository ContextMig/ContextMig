.class Lde/baumann/browser/Activity/BrowserActivity$61;
.super Landroid/content/BroadcastReceiver;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->toast_login(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$clipboard:Landroid/content/ClipboardManager;

.field final synthetic val$decrypted_userPW:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Landroid/content/ClipboardManager;)V
    .locals 0

    .line 2337
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$61;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$61;->val$decrypted_userPW:Ljava/lang/String;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$61;->val$clipboard:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "text"

    .line 2340
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$61;->val$decrypted_userPW:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 2341
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$61;->val$clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2342
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$61;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p2, 0x7f0e00f0

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    return-void
.end method
