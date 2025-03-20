.class Lorg/mozilla/focus/activity/MainActivity$1;
.super Lorg/mozilla/focus/architecture/NonNullObserver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/activity/MainActivity;->registerSessionObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/focus/architecture/NonNullObserver",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/mozilla/focus/session/Session;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/activity/MainActivity;

.field private wasSessionsEmpty:Z


# direct methods
.method constructor <init>(Lorg/mozilla/focus/activity/MainActivity;)V
    .locals 1
    .param p1, "this$0"    # Lorg/mozilla/focus/activity/MainActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/mozilla/focus/activity/MainActivity$1;->this$0:Lorg/mozilla/focus/activity/MainActivity;

    invoke-direct {p0}, Lorg/mozilla/focus/architecture/NonNullObserver;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/focus/activity/MainActivity$1;->wasSessionsEmpty:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic onValueChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/activity/MainActivity$1;->onValueChanged(Ljava/util/List;)V

    return-void
.end method

.method public onValueChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lorg/mozilla/focus/activity/MainActivity$1;->this$0:Lorg/mozilla/focus/activity/MainActivity;

    invoke-static {v0}, Lorg/mozilla/focus/activity/MainActivity;->access$000(Lorg/mozilla/focus/activity/MainActivity;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/focus/activity/MainActivity$1;->wasSessionsEmpty:Z

    .line 106
    :goto_0
    iget-object v0, p0, Lorg/mozilla/focus/activity/MainActivity$1;->this$0:Lorg/mozilla/focus/activity/MainActivity;

    invoke-static {v0}, Lorg/mozilla/focus/utils/Settings;->getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/utils/Settings;->shouldShowFirstrun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/mozilla/focus/activity/MainActivity$1;->this$0:Lorg/mozilla/focus/activity/MainActivity;

    invoke-static {v0}, Lorg/mozilla/focus/activity/MainActivity;->access$100(Lorg/mozilla/focus/activity/MainActivity;)V

    .line 109
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-boolean v0, p0, Lorg/mozilla/focus/activity/MainActivity$1;->wasSessionsEmpty:Z

    if-eqz v0, :cond_2

    .line 97
    invoke-static {}, Lorg/mozilla/focus/web/WebViewProvider;->performNewBrowserSessionCleanup()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/focus/activity/MainActivity$1;->wasSessionsEmpty:Z

    .line 102
    :cond_2
    iget-object v0, p0, Lorg/mozilla/focus/activity/MainActivity$1;->this$0:Lorg/mozilla/focus/activity/MainActivity;

    invoke-virtual {v0}, Lorg/mozilla/focus/activity/MainActivity;->showBrowserScreenForCurrentSession()V

    goto :goto_0
.end method
