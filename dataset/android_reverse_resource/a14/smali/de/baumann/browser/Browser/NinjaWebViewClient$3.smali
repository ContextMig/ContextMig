.class Lde/baumann/browser/Browser/NinjaWebViewClient$3;
.super Ljava/lang/Object;
.source "NinjaWebViewClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Browser/NinjaWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Browser/NinjaWebViewClient;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$3;->this$0:Lde/baumann/browser/Browser/NinjaWebViewClient;

    iput-object p2, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$3;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p3, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$3;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 286
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$3;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 287
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$3;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method
