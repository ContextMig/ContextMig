.class Lde/baumann/browser/Browser/NinjaWebViewClient$2;
.super Ljava/lang/Object;
.source "NinjaWebViewClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Browser/NinjaWebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Browser/NinjaWebViewClient;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;

.field final synthetic val$doNotResend:Landroid/os/Message;


# direct methods
.method constructor <init>(Lde/baumann/browser/Browser/NinjaWebViewClient;Landroid/os/Message;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$2;->this$0:Lde/baumann/browser/Browser/NinjaWebViewClient;

    iput-object p2, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$2;->val$doNotResend:Landroid/os/Message;

    iput-object p3, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 263
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$2;->val$doNotResend:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 264
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaWebViewClient$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method
