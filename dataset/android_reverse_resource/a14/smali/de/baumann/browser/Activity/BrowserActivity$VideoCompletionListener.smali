.class Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/baumann/browser/Activity/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method private constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Activity/BrowserActivity$1;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;-><init>(Lde/baumann/browser/Activity/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 314
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$VideoCompletionListener;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {p1}, Lde/baumann/browser/Activity/BrowserActivity;->onHideCustomView()Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
