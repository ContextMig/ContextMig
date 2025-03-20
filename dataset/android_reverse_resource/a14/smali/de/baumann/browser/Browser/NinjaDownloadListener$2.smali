.class Lde/baumann/browser/Browser/NinjaDownloadListener$2;
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

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Lde/baumann/browser/Browser/NinjaDownloadListener;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$2;->this$0:Lde/baumann/browser/Browser/NinjaDownloadListener;

    iput-object p2, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lde/baumann/browser/Browser/NinjaDownloadListener$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method
