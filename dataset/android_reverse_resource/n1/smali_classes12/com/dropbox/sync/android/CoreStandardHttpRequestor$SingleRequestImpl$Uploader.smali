.class Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;
.super Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;
.source "CoreStandardHttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Uploader"
.end annotation


# instance fields
.field private mUploaderConn:Ljavax/net/ssl/HttpsURLConnection;

.field final synthetic this$1:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;Ljavax/net/ssl/HttpsURLConnection;I)V
    .locals 1
    .param p2, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p3, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->this$1:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;

    .line 330
    invoke-static {p2, p3}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$500(Ljavax/net/ssl/HttpsURLConnection;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/CoreHttpRequestor$Uploader;-><init>(Ljava/io/OutputStream;)V

    .line 331
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->body:Ljava/io/OutputStream;

    invoke-static {p1, v0}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->access$600(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;Ljava/io/OutputStream;)V

    .line 332
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 333
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->mUploaderConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 334
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->mUploaderConn:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->mUploaderConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->mUploaderConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 353
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->this$1:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;

    iget-object v1, v1, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$200(Lcom/dropbox/sync/android/CoreStandardHttpRequestor;)Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception from HttpsURLConnection.disconnect()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public finish()Lcom/dropbox/sync/android/CoreHttpRequestor$Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->mUploaderConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 358
    .local v2, "localConn":Ljavax/net/ssl/HttpsURLConnection;
    if-nez v2, :cond_0

    .line 359
    new-instance v3, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v4, "Can\'t finish().  Uploader already closed."

    invoke-direct {v3, v4}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->mUploaderConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 365
    :try_start_0
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 369
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl$Uploader;->this$1:Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;

    invoke-static {v3, v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->access$700(Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;Ljava/io/InputStream;)V

    .line 370
    invoke-static {v2, v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$100(Ljavax/net/ssl/HttpsURLConnection;Ljava/io/InputStream;)Lcom/dropbox/sync/android/CoreHttpRequestor$Response;

    move-result-object v3

    return-object v3

    .line 366
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method
