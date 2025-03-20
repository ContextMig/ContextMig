.class Lde/baumann/browser/Browser/NinjaWebViewClient$5;
.super Ljava/lang/Object;
.source "NinjaWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Browser/NinjaWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Browser/NinjaWebViewClient;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field final synthetic val$pass_userNameET:Landroid/widget/EditText;

.field final synthetic val$pass_userPWET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$5;->this$0:Lde/baumann/browser/Browser/NinjaWebViewClient;

    iput-object p2, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$5;->val$pass_userNameET:Landroid/widget/EditText;

    iput-object p3, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$5;->val$pass_userPWET:Landroid/widget/EditText;

    iput-object p4, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$5;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 322
    iget-object p2, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$5;->val$pass_userNameET:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 323
    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$5;->val$pass_userPWET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$5;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v1, p2, v0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
