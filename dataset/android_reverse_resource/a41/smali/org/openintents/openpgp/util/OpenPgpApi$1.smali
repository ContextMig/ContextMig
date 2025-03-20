.class Lorg/openintents/openpgp/util/OpenPgpApi$1;
.super Ljava/lang/Object;
.source "OpenPgpApi.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

.field final synthetic val$callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;


# direct methods
.method constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openintents/openpgp/util/OpenPgpApi;

    .prologue
    .line 396
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$1;->this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$1;->val$callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 399
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$1;->val$callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;->onProgress(II)V

    .line 400
    const/4 v0, 0x1

    return v0
.end method
