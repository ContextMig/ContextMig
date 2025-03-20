.class Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$1;
.super Landroid/webkit/WebViewClient;
.source "QuotedMessageMvpView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$1;->this$0:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
