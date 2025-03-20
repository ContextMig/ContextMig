.class Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;
.super Ljava/lang/Object;
.source "DownloadDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/DownloadDialogFragment;->setButtonOnClickListener(Landroid/widget/Button;Lorg/mozilla/focus/web/Download;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/DownloadDialogFragment;

.field final synthetic val$pendingDownload:Lorg/mozilla/focus/web/Download;

.field final synthetic val$shouldDownload:Z


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/DownloadDialogFragment;Lorg/mozilla/focus/web/Download;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/DownloadDialogFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;->this$0:Lorg/mozilla/focus/fragment/DownloadDialogFragment;

    iput-object p2, p0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;->val$pendingDownload:Lorg/mozilla/focus/web/Download;

    iput-boolean p3, p0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;->val$shouldDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;->this$0:Lorg/mozilla/focus/fragment/DownloadDialogFragment;

    iget-object v1, p0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;->val$pendingDownload:Lorg/mozilla/focus/web/Download;

    iget-boolean v2, p0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;->val$shouldDownload:Z

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->sendDownloadDialogButtonClicked(Lorg/mozilla/focus/web/Download;Z)V

    .line 84
    iget-boolean v0, p0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;->val$shouldDownload:Z

    invoke-static {v0}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->downloadDialogDownloadEvent(Z)V

    .line 85
    iget-object v0, p0, Lorg/mozilla/focus/fragment/DownloadDialogFragment$1;->this$0:Lorg/mozilla/focus/fragment/DownloadDialogFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/DownloadDialogFragment;->dismiss()V

    .line 86
    return-void
.end method
