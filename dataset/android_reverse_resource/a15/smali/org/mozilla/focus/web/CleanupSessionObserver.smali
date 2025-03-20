.class public Lorg/mozilla/focus/web/CleanupSessionObserver;
.super Lorg/mozilla/focus/architecture/NonNullObserver;
.source "CleanupSessionObserver.java"


# annotations
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
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/mozilla/focus/architecture/NonNullObserver;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/mozilla/focus/web/CleanupSessionObserver;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected bridge synthetic onValueChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/web/CleanupSessionObserver;->onValueChanged(Ljava/util/List;)V

    return-void
.end method

.method protected onValueChanged(Ljava/util/List;)V
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
    .line 25
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lorg/mozilla/focus/web/CleanupSessionObserver;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/mozilla/focus/web/WebViewProvider;->performCleanup(Landroid/content/Context;)V

    .line 29
    :cond_0
    return-void
.end method
