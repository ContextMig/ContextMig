.class public Lde/baumann/browser/Browser/BrowserContainer;
.super Ljava/lang/Object;
.source "BrowserContainer.java"


# static fields
.field private static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/baumann/browser/Browser/AlbumController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Lde/baumann/browser/Browser/AlbumController;)V
    .locals 2

    const-class v0, Lde/baumann/browser/Browser/BrowserContainer;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized add(Lde/baumann/browser/Browser/AlbumController;I)V
    .locals 2

    const-class v0, Lde/baumann/browser/Browser/BrowserContainer;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v1, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clear()V
    .locals 4

    const-class v0, Lde/baumann/browser/Browser/BrowserContainer;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/baumann/browser/Browser/AlbumController;

    .line 53
    instance-of v3, v2, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v3, :cond_0

    .line 54
    check-cast v2, Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v2}, Lde/baumann/browser/View/NinjaWebView;->destroy()V

    goto :goto_0

    .line 58
    :cond_1
    sget-object v1, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0

    throw v1
.end method

.method public static get(I)Lde/baumann/browser/Browser/AlbumController;
    .locals 1

    .line 12
    sget-object v0, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/baumann/browser/Browser/AlbumController;

    return-object p0
.end method

.method public static indexOf(Lde/baumann/browser/Browser/AlbumController;)I
    .locals 1

    .line 40
    sget-object v0, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/baumann/browser/Browser/AlbumController;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized remove(Lde/baumann/browser/Browser/AlbumController;)V
    .locals 2

    const-class v0, Lde/baumann/browser/Browser/BrowserContainer;

    monitor-enter v0

    .line 32
    :try_start_0
    instance-of v1, p0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v1, :cond_0

    .line 33
    move-object v1, p0

    check-cast v1, Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaWebView;->destroy()V

    .line 36
    :cond_0
    sget-object v1, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized set(Lde/baumann/browser/Browser/AlbumController;I)V
    .locals 2

    const-class v0, Lde/baumann/browser/Browser/BrowserContainer;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v1, :cond_0

    .line 17
    sget-object v1, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/View/NinjaWebView;

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaWebView;->destroy()V

    .line 20
    :cond_0
    sget-object v1, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v1, p1, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    throw p0
.end method

.method public static size()I
    .locals 1

    .line 48
    sget-object v0, Lde/baumann/browser/Browser/BrowserContainer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
