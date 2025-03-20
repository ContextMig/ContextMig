.class Lde/baumann/browser/Browser/NinjaWebViewClient$6;
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


# direct methods
.method constructor <init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$6;->this$0:Lde/baumann/browser/Browser/NinjaWebViewClient;

    iput-object p2, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$6;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 331
    iget-object p2, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$6;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 332
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
