.class Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

.field final synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;->this$1:Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

    iput-object p2, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1063
    iget-object v2, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;

    .line 1064
    .local v1, "monitored":Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    const-string v2, "Forcibly closing remotely exposed cursor"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    :try_start_0
    invoke-virtual {v1}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception while forcibly closing cursor"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
