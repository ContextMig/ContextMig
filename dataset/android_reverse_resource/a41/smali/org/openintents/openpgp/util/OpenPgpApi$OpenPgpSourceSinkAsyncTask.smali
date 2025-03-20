.class Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;
.super Landroid/os/AsyncTask;
.source "OpenPgpApi.java"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/OpenPgpApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenPgpSourceSinkAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult",
        "<TT;>;>;",
        "Lorg/openintents/openpgp/util/OpenPgpApi$CancelableBackgroundOperation;"
    }
.end annotation


# instance fields
.field callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field data:Landroid/content/Intent;

.field dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<TT;>;"
        }
    .end annotation
.end field

.field dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

.field final synthetic this$0:Lorg/openintents/openpgp/util/OpenPgpApi;


# direct methods
.method private constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V
    .locals 0
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "dataSource"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink",
            "<TT;>;",
            "Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<TT;>;"
    .local p4, "dataSink":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink<TT;>;"
    .local p5, "callback":Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;, "Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback<TT;>;"
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 347
    iput-object p2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->data:Landroid/content/Intent;

    .line 348
    iput-object p3, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .line 349
    iput-object p4, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    .line 350
    iput-object p5, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

    .line 351
    return-void
.end method

.method synthetic constructor <init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;Lorg/openintents/openpgp/util/OpenPgpApi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openintents/openpgp/util/OpenPgpApi;
    .param p2, "x1"    # Landroid/content/Intent;
    .param p3, "x2"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .param p4, "x3"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;
    .param p5, "x4"    # Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;
    .param p6, "x5"    # Lorg/openintents/openpgp/util/OpenPgpApi$1;

    .prologue
    .line 338
    .local p0, "this":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<TT;>;"
    invoke-direct/range {p0 .. p5}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V

    return-void
.end method


# virtual methods
.method public cancelOperation()V
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->cancel(Z)Z

    .line 365
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->access$000(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;)V

    .line 368
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    .local p0, "this":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->doInBackground([Ljava/lang/Void;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;
    .locals 4
    .param p1, "unused"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<TT;>;"
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->this$0:Lorg/openintents/openpgp/util/OpenPgpApi;

    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->data:Landroid/content/Intent;

    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    iget-object v3, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSink:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 338
    .local p0, "this":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<TT;>;"
    check-cast p1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;

    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->onPostExecute(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;)V

    return-void
.end method

.method protected onPostExecute(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask<TT;>;"
    .local p1, "result":Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;, "Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult<TT;>;"
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->callback:Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;

    iget-object v1, p1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;->apiResult:Landroid/content/Intent;

    iget-object v2, p1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataResult;->sinkResult:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;->onReturn(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 360
    return-void
.end method
