.class Lcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;
.super Ljava/lang/Object;
.source "NativeDatastore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeDatastore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatastoreStatusBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/NativeDatastore;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/NativeDatastore;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method


# virtual methods
.method public createStatus(IILjava/lang/String;ILjava/lang/String;)Lcom/dropbox/sync/android/DbxDatastoreStatus;
    .locals 5
    .param p1, "nativeStatus"    # I
    .param p2, "dlErrCode"    # I
    .param p3, "dlErrMsg"    # Ljava/lang/String;
    .param p4, "ulErrCode"    # I
    .param p5, "ulErrMsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 193
    :try_start_0
    new-instance v3, Lcom/dropbox/sync/android/DbxDatastoreStatus;

    if-nez p2, :cond_0

    move-object v2, v1

    :goto_0
    if-nez p4, :cond_1

    :goto_1
    invoke-direct {v3, p1, v2, v1}, Lcom/dropbox/sync/android/DbxDatastoreStatus;-><init>(ILcom/dropbox/sync/android/DbxThrowable;Lcom/dropbox/sync/android/DbxThrowable;)V

    return-object v3

    :cond_0
    const-string v2, "datastore download error"

    const/4 v4, 0x0

    invoke-static {v2, p2, p3, v4}, Lcom/dropbox/sync/android/NativeLib;->exceptionFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v1, "datastore upload error"

    const/4 v4, 0x0

    invoke-static {v1, p4, p5, v4}, Lcom/dropbox/sync/android/NativeLib;->exceptionFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxThrowable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-static {v1}, Lcom/dropbox/sync/android/NativeDatastore;->access$000(Lcom/dropbox/sync/android/NativeDatastore;)Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/NativeDatastore;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 200
    throw v0

    .line 201
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/dropbox/sync/android/NativeDatastore$DatastoreStatusBuilder;->this$0:Lcom/dropbox/sync/android/NativeDatastore;

    invoke-static {v1}, Lcom/dropbox/sync/android/NativeDatastore;->access$000(Lcom/dropbox/sync/android/NativeDatastore;)Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/sync/android/NativeDatastore;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V

    .line 203
    throw v0
.end method
