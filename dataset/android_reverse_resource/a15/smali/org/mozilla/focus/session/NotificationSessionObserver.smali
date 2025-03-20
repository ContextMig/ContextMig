.class public Lorg/mozilla/focus/session/NotificationSessionObserver;
.super Lorg/mozilla/focus/architecture/NonNullObserver;
.source "NotificationSessionObserver.java"


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
    .line 17
    invoke-direct {p0}, Lorg/mozilla/focus/architecture/NonNullObserver;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/mozilla/focus/session/NotificationSessionObserver;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge synthetic onValueChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/session/NotificationSessionObserver;->onValueChanged(Ljava/util/List;)V

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
    .line 23
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lorg/mozilla/focus/session/NotificationSessionObserver;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/mozilla/focus/session/SessionNotificationService;->stop(Landroid/content/Context;)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/session/NotificationSessionObserver;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/mozilla/focus/session/SessionNotificationService;->start(Landroid/content/Context;)V

    goto :goto_0
.end method
