.class Lde/baumann/browser/Browser/NinjaDownloadListener$1;
.super Ljava/lang/Object;
.source "NinjaDownloadListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Browser/NinjaDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Browser/NinjaDownloadListener;

.field final synthetic val$contentDisposition:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;

.field final synthetic val$holder:Landroid/content/Context;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/baumann/browser/Browser/NinjaDownloadListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->this$0:Lde/baumann/browser/Browser/NinjaDownloadListener;

    iput-object p2, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$holder:Landroid/content/Context;

    iput-object p3, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$contentDisposition:Ljava/lang/String;

    iput-object p5, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$mimeType:Ljava/lang/String;

    iput-object p6, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 41
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$holder:Landroid/content/Context;

    iget-object v0, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$contentDisposition:Ljava/lang/String;

    iget-object v2, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$mimeType:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lde/baumann/browser/Unit/BrowserUnit;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$1;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method
